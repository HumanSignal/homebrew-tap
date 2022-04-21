class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/79/07/d4bee21e504c6e4ea738292144142ddf2ef1f612c14a6b213805bb5aefc9/label-studio-1.4.1.post1.tar.gz"
  sha256 "d651c365fad7e971ca7129f3a74943979449893fbcd71fc4dde0932e4e45e787"
  license "Apache-2.0"

  depends_on "python@3.8"

  def install
    venv = virtualenv_create(libexec, "python3", system_site_packages: true)
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
