class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/13/df/88765b47a458a105b4f88da021604358eab8a5feb40457ad464901e93c7d/label_studio-1.14.0.tar.gz"
  sha256 "654c5a0962cbc6f97c7c27f97e3d02bd335581c728be8d28560409140ab32371"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.14.0"
    sha256 ventura: "19a003f62b5bb812d96b5c3375c2a99fb6d78eedc54399f8934946cb9a378565"
  end

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

  def install
    python3 = "python3.10"
    venv = virtualenv_create(libexec, python3, system_site_packages: true, without_pip: false)
    system libexec/"bin/pip", "install", "--verbose", "--upgrade", "pip==22.3.1"
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
