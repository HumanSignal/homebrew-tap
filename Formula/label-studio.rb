class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/93/14/6dcce596dec77093897e767f83b36a10c17978fa4a4c43d7a6922a1d1cf7/label-studio-1.9.1.post0.tar.gz"
  sha256 "632b7ca6f5d9a12c5820ff004f3ebd3daa2fd10e4e544249b0cb8b2c033bb783"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.9.1"
    sha256 ventura: "1fe41cc51184aadd06c93b5c57a096ab674ab66c95d4479abef2ce48156485ad"
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
