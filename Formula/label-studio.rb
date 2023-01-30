class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/84/23/6041bae7256a421f6ce8f73f90d8fe68e308760c3dfc04f9875be293b028/label-studio-1.7.1.tar.gz"
  sha256 "571064c0ef4596e5733ffe22373ce36c2f733ff5fb267398c4090d2353bb605e"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/heartexlabs/homebrew-tap/releases/download/label-studio-1.7.1"
    sha256 monterey: "5c046429ac20ecee92551ceb18322b327148c9d660b3dad0e12b43911f7273e3"
    sha256 big_sur:  "e4181ef608ecff3d1b99e040a6d9042bb46f3d843b417e241a6ed4ed4cdeb2ad"
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
