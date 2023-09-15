class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/fe/19/b7bea393d47c5d19cba2c547d4ff3b9df69d51397c1925a7aa14a13debc8/label-studio-1.8.2.post0.tar.gz"
  sha256 "8b1206ff4766e9c65ff069b43fa2b6787c18379af65b11ccaf8607f9eb4ddfd6"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.8.2"
    sha256 ventura: "1acc1c48ac0d4f7708c03f6157b7ccfccc025df46aabca24ab54487f33037934"
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
