class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/83/2b/7a970b1d8e56ff8716828b7ce24d488515b0cb0151d46e07ecc29d7f41b8/label-studio-1.8.2.tar.gz"
  sha256 "371597e73592f9849c9c903b452db36499dc9822c3da849a0c79b83e92c65116"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.8.1"
    sha256 ventura: "4ecaddc96fb4e5d30c6e7c9dc362e153f6b47e54911a4b686bf818fb7f1246c8"
  end

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

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
