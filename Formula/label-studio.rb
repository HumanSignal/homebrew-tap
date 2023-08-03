class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/18/d6/992c49b4e768cd4b0492293b52543ac2481ca792e4e88eb3da4bc59d46e3/label-studio-1.8.1.tar.gz"
  sha256 "a110fed3053189982568f63e33e9d45cad9363613ae1d3e0cf3e35c05cc8f52e"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.8.1"
    sha256 ventura: "4ecaddc96fb4e5d30c6e7c9dc362e153f6b47e54911a4b686bf818fb7f1246c8"
  end

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

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
