class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/02/33/8df7d57bc551ef1c4250f408c3e0668f7456eb093514ba0dfcb2e1a4322e/label_studio-1.17.0.tar.gz"
  sha256 "ac150767f3741b7775dcb3c32b7f3dcc91aa2e1dee557401d2701e2e8f826a32"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.17.0"
    sha256 arm64_sonoma: "2ef01d96f13a0234e8b8defdc479aa09c1f959483658e4d32aa8b70d95fbef81"
    sha256 ventura:      "d15e1fae805906c21dbe08ffe8dd0e096f77d2c5230eca2a302d4e41004ffe61"
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
