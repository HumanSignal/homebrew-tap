class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/c7/94/2ccabc42162b6d56e18effbf570f5a289466ce791946460592614601cfa5/label_studio-1.18.0.tar.gz"
  sha256 "a5b8c127073bea7025176e26b9bbbe3cc8892fb1ecabf72637fd38400fba4502"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.18.0"
    sha256 arm64_sonoma: "eb1a2f67802ca2b1e362dda0694e3cec1bdc8b9b6268e8f024b00bc6cb328e68"
    sha256 ventura:      "d9f1dad69c13ba203fd6a85be3f4531c90e947e743e412971d74da16eadbf905"
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
