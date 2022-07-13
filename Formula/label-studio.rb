class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/5a/a0/895a419ce4ce3dd1e5f4631380561ee57ace2a1073ae4dd94c1ff8f97cd0/label-studio-1.5.0.post0.tar.gz"
  sha256 "a7fd5fa69d28cc39f032ea4ecbd0fa77adb519b365605f86ee6ff969f56856a9"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.5.0.post0"
    sha256 big_sur:  "03208f2a5caf5f549888cb2b8e9a884cb04aa5cd58ef6dd1fea70b2c339242a0"
    sha256 catalina: "e28c9bfb5c0935809ec3e680f15253623633a577bf951942e10fb67032afbd84"
  end

  depends_on "postgresql"
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
