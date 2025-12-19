class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/ff/7e/78872e38957816016a29887c3507ca533d302f37777bf3f4e3f504d29a7a/label_studio-1.22.0.tar.gz"
  sha256 "71fda47c474f51f27b84ce91ff9823e364c26e37132664a7ae03a4da2b3c48d6"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.20.0"
    sha256 arm64_sequoia: "b940bf1c6029ef4e135e537083629f108d6ca7fff77113def1b8b8f28cc12bf2"
    sha256 arm64_sonoma:  "7775555056ed984de11127867a48a098c79ca07a0f2a5201ea1f8855bcf3f9cf"
    sha256 ventura:       "deb442029400c58c00b8d83ba182571433fb74478ece0ab407bffddf7b51151b"
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
