class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/23/5c/c148ea7142382391d36ad91f91ad27e763cce87b3b7980715f5278a4191f/label_studio-1.16.0.tar.gz"
  sha256 "553f8675845c9fbf11b94ee596690feb6d20fe1c3dc4979ee432c8d0e077a23c"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.16.0"
    sha256 arm64_sonoma: "bdac44b5aeec9894f93ba12b632b0550fefd87a52afb6c261305006d914411e6"
    sha256 ventura:      "54ac0f5673826e41acc20015e0f6a220635996f3cd806a51ad3bc53ec04dbdc8"
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
