class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/2a/6a/7a41c1a761a3c7dbc1c35e779fe522ed16f09ff5446dd0ad272615a13a84/label_studio-1.14.0.post0.tar.gz"
  sha256 "e03349911d27bc0acd90731201b0e5501391b289aeb32545b58019c9ffb9cb74"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.14.0.post0"
    sha256 arm64_sonoma: "d3c811632b8ab6733a106250ea218b52fbcdf54bcb483fb1029e5b4b6a3a4aea"
    sha256 ventura:      "9ec0412c0d783637e0a89547a43287f6c27a33d751f9b8c3e17e37890999bad5"
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
