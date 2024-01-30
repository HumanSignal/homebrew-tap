class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/eb/f7/0ee8c6c37d245c163a8781477e0f5d959ecd6e61a5b8417aa7f65cb6e0b7/label_studio-1.11.0.tar.gz"
  sha256 "14b182155f3013307670445796c56f8e0f445004dda2fc27ae99e4124873b96a"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.11.0"
    sha256 ventura: "c4a269878d5f3dbf5f3ab4b51db43ba4bda124dcd16d0c630cb787dc38d33e5f"
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
