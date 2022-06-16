class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/ec/2b/93f8c2d388199906ae36ac786db8b930fee6c9dbc192fd76fffb317f5b11/label-studio-1.5.0.tar.gz"
  sha256 "7bce8a0471a8eabf9ebcccd2ff80036f413cb9c731032787aef42482bbb6fbb1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.4.1.post1"
    rebuild 2
    sha256 big_sur:  "3e4095650db01bd3d34186fa6e62c5da1a86fa3488995864954b3d4152f40f0a"
    sha256 catalina: "1d09cadffd1c6ec931cdcb5ef7c6bb51458d9bffc4b9dc24c877ec2b4b2b6d25"
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
