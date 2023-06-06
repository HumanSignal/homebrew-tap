class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/20/f9/c080934956e74afca4ab1a5c2b608963349a87dfa76b68bb6ebd0ed0984c/label-studio-1.8.0.tar.gz"/
  sha256 "3406eed6304e255c0762a047662c7541063290caaf12094b9f4fea0b86e5db32"/
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.7.2"
    sha256               arm64_ventura: "ce4a373e379645ae8df00e602f37bb18c2ca72595a4768ff5fce2b06ac19b410"
    sha256 cellar: :any, monterey:      "f0dde1e74d16e68c14e8d3092b4b9e7dd1e0f008d9a62ac163874abd0a3414fe"
    sha256 cellar: :any, big_sur:       "7fb37cba6323316e88d1463f100e611fe5b60fa032faf67f0217d1a44fe656bc"
  end

  depends_on "postgresql@14"
  depends_on "python@3.8"

  def install
    venv = virtualenv_create(libexec, "python3", system_site_packages: true)
    system libexec/"bin/pip", "install", "--verbose", "--upgrade", "pip==22.3.1"
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
