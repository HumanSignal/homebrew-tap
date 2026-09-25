class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/84/0b/b61203765b0b93dd7e809d8126b6da4a46b0121133eaa093a6a9b357fae6/label_studio-1.23.1.tar.gz"
  sha256 "235a63a8c246c862445ff1d87655202105b552b6772889f8496b6a1ef787985c"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.23.1"
    sha256 arm64_tahoe:   "5af895b6685a461e618f5d454dab0280f30d29c7805b7e1596c7e6288955caf6"
    sha256 arm64_sequoia: "831d9f4d796fc7567bef625400b8bce10634f3db89102182f803c48161181c4c"
  end

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

  DELETABLE_LOAD_COMMANDS = [:LC_SOURCE_VERSION, :LC_FUNCTION_STARTS, :LC_DATA_IN_CODE].freeze

  def install
    venv = virtualenv_create(libexec, "python3.10", system_site_packages: true, without_pip: false)
    system libexec/"bin/pip", "install", "--verbose", "--upgrade", "pip==22.3.1"
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath
    fix_dylib_header_padding
  end

  # Some binary wheels (jiter, rpds-py, uuid-utils, psycopg-binary) ship
  # Mach-O dylibs linked without `-headerpad_max_install_names`, so the dylib
  # ID relocations done by `brew install` and `brew bottle` fail with
  # `MachO::HeaderPadError`. Modern dyld requires LC_UUID and rejects
  # LC_ID_DYLIB in non-dylib files, so instead make room by deleting
  # expendable load commands until the bottling placeholder ID (the longest
  # form the file will ever carry) fits, then relocate the ID here so the
  # later rewrites by `brew install` and `brew bottle` always fit.
  def fix_dylib_header_padding
    require "macho"

    # FNM_DOTMATCH: delocated wheels keep their dylibs in hidden `.dylibs`
    # directories, which `Dir.glob` skips by default
    libexec.glob("lib/python*/site-packages/**/*.{so,dylib}", File::FNM_DOTMATCH).each do |file|
      next if file.symlink?

      macho = begin
        MachO.open(file.to_s)
      rescue MachO::MachOError
        next
      end
      next if macho.is_a?(MachO::FatFile) && macho.machos.none? { |slice| slice.filetype == :dylib }
      next if macho.is_a?(MachO::MachOFile) && macho.filetype != :dylib

      opt_id = (opt_prefix/file.relative_path_from(prefix)).to_s
      placeholder_id = opt_id.sub(HOMEBREW_PREFIX.to_s, "@@HOMEBREW_PREFIX@@")
      begin
        # probe in memory only, with headroom for the LC_CODE_SIGNATURE
        # command that ad-hoc signing later adds to unsigned slices
        macho.change_dylib_id(placeholder_id + ("x" * 16))
        next
      rescue MachO::HeaderPadError
        nil
      end

      # sign first: this adds LC_CODE_SIGNATURE to unsigned slices, consuming
      # part of the header space about to be measured
      system "codesign", "--sign", "-", "--force", file
      macho = MachO.open(file.to_s)
      machos = macho.is_a?(MachO::FatFile) ? macho.machos : [macho]
      deletable = DELETABLE_LOAD_COMMANDS.dup
      begin
        macho.change_dylib_id(placeholder_id)
      rescue MachO::HeaderPadError
        cmd = deletable.shift
        raise if cmd.nil?

        machos.each do |slice|
          slice.command(cmd).each { |lc| slice.delete_command(lc) }
        end
        retry
      end
      macho.change_dylib_id(opt_id)
      macho.write!
      system "codesign", "--sign", "-", "--force", file
    end
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
