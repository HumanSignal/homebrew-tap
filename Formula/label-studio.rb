class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/18/d6/992c49b4e768cd4b0492293b52543ac2481ca792e4e88eb3da4bc59d46e3/label-studio-1.8.1.tar.gz"
  sha256 "a110fed3053189982568f63e33e9d45cad9363613ae1d3e0cf3e35c05cc8f52e"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.8.0"
    sha256 ventura:  "9eb2ca61abf70153b1bdd8a4ef28d9f148a6140a3f55dcf1e7adeed409495fe6"
    sha256 monterey: "94cde7e34fb104f5bd6f306d23e319b2ee18efda8a43d8f552da4b5ae2cdfb95"
    sha256 big_sur:  "328f96902ad937851634c60a1fa6a78c4b4cffc5b42ea0be6d6be2abf3a705f6"
  end

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

  def install
    venv = virtualenv_create(libexec, "python3", system_site_packages: true, without_pip: false)
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
