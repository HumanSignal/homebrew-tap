class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/43/a6/f7befb011650c342108b6a2a28a65c2992de8ffdbe71e489f1a6192a76dd/label_studio-1.23.2.tar.gz"
  sha256 "9042672d30e7732f260f4de0ce751135d5da1c1e3ea67ed90dfd4af2056d6ac8"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.23.2"
    sha256 arm64_tahoe:   "3d38c5f0ae191498ddcbb8423c6d38e23eef01aec0c52acb6a97acd45061ab8b"
    sha256 arm64_sequoia: "d9402d89f45f45e9a43f112395bb0868c3f7d37285057828a28c9e4afb84da1c"
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
