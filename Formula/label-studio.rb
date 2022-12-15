class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/64/ff/1a4555ffccd36833305317255b5bf20818dfdee2506a4f34f3426f45a3eb/label-studio-1.7.0.tar.gz"
  sha256 "8cafd32ec93f7285047ef09c230c8a0a07a5f5422341d7f2cd5f66bac7ec14fc"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.6.0"
    sha256 big_sur:  "9aad0b7fec4a991e25ebac1119b5cc7b4514d73c1ca78e6f1fef5a53f0893c11"
    sha256 catalina: "99dd1f1e7a751be292640bdb448bed37597db02e3bc9384f9e4107e1f061bf9b"
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
