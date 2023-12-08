class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/3d/81/08d247b1acc3ae6e10324ead6ac6eebf2295e425ae06ca473ef9e39c78ad/label_studio-1.10.0.post0.tar.gz"
  sha256 "908cb2a357cdd5532d0e1388323030add1e4542b0e09a582ee4959d5364f39c5"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.10.0.post0"
    sha256 ventura: "1f1c4735cdb55fdff586e6a69996fe5548be3c99d12d3a362f9c7493b78042d2"
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
