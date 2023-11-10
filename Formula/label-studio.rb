class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/96/02/4bc3df6ee24bc58e32c89755c82f07fad3bcf1b43364e848c7c28065e6d7/label-studio-1.9.2.post0.tar.gz"
  sha256 "a3c483ada57c6dc5c7f6a03cafc1bcefea5eb1c8768954b1de8bf18c44b8ed19"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.9.2.post0"
    sha256 ventura: "dca5460a86f1b36cdf0615e3597e209bef7e98d619ca531111f15f5ddb5fa671"
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
