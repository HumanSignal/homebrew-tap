class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/d2/19/2106b6e98db7f23d81fe8f65cae14bb4273908592fd5239286644259cc54/label-studio-1.7.2.tar.gz"
  sha256 "736249ba92a2b4db6b316e98e044f9e521a51bded32475b7d687d0d3ae665b4b"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.7.2"
    sha256 cellar: :any, monterey: "f0dde1e74d16e68c14e8d3092b4b9e7dd1e0f008d9a62ac163874abd0a3414fe"
    sha256 cellar: :any, big_sur:  "7fb37cba6323316e88d1463f100e611fe5b60fa032faf67f0217d1a44fe656bc"
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
