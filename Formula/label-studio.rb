class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/0a/33/da1e47b711d19ea4dab3bc04a0ddae336cd620d6e02fa73a9684f95ce5c3/label_studio-1.19.0.tar.gz"
  sha256 "207eb2e655d976e426697cd11d52cf135e73fa1c17fbf3f6d274ecabba2f2047"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.19.0"
    sha256 arm64_sonoma: "ae22908f42630e57f65ed6ff5ab199936612f6358e032bc949784eb6c8869be0"
    sha256 ventura:      "44dce91dcd12283796c04aea2b2506143c71848908454d6ca235926889b05bd1"
  end

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

  def install
    python3 = "python3.10"
    venv = virtualenv_create(libexec, python3, system_site_packages: true, without_pip: false)
    system libexec/"bin/pip", "install", "--verbose", "--upgrade", "pip==22.3.1"
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
