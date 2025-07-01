class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/2e/76/c1af17a8150009548b8faf3fb003bdd2cf9e72e13b34e65a9cb89d64e98e/label_studio-1.20.0.tar.gz"
  sha256 "d199572229200ab1ba0fa795611b73654956f27552fd1553ea325d05d9371bef"
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
