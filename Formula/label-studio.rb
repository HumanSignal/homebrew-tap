class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/5a/a0/895a419ce4ce3dd1e5f4631380561ee57ace2a1073ae4dd94c1ff8f97cd0/label-studio-1.5.0.post0.tar.gz"
  sha256 "a7fd5fa69d28cc39f032ea4ecbd0fa77adb519b365605f86ee6ff969f56856a9"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.5.0"
    sha256 arm64_monterey: "237294220da5701b48f25d02e7a4e6ca01635983c048f2ed43823d1d327e60c5"
    sha256 big_sur:        "bbf86391fc29449d004848343c26084f99e0edb27ad6a57c156385ed9502b521"
    sha256 catalina:       "658cfaf945c74efc7bea9744bc038abaf2fcf6ac0be15caecff003fc678c3c2c"
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
