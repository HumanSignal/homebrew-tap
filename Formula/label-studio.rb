class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/99/53/13d27fbfa7e220e2346445cb0ff8611646192ea7b4dab1b90d8ac944a806/label_studio-1.12.0.post0.tar.gz"
  sha256 "5d218a62e3a1f2bc8f5c1c5c23a3aa46043c6bf629000aad838463b6cf1b177c"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.12.0.post0"
    sha256 ventura: "340409b5e42668f6df4cdeee758ef26eefee2691d6d47d3c00bb3947aef64a38"
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
