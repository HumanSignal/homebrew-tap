class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/e7/f2/93e85461d95fc05caa5bf62bff93ff80430d91747a441f3b99d5f050de61/label-studio-1.6.0.tar.gz"
  sha256 "ee7867147ce0f705242f93b363c22468925215ae11d3aa27f1d3a775a8305659"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.5.0.post0"
    sha256 arm64_monterey: "844677ed1d75365d38e3224b20e9ed525326bcb93fe22611173a5b732dc53d44"
    sha256 big_sur:        "03208f2a5caf5f549888cb2b8e9a884cb04aa5cd58ef6dd1fea70b2c339242a0"
    sha256 catalina:       "e28c9bfb5c0935809ec3e680f15253623633a577bf951942e10fb67032afbd84"
  end

  depends_on "postgresql@14"
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
