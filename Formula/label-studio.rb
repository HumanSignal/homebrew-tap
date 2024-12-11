class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/b9/05/fa4dea543ec38c54c356fe95682d39c6f6f84e161d51eeeb7da0772eb267/label_studio-1.15.0.tar.gz"
  sha256 "988abb3c8540f0bce7e913d01ca5f22c70d6eae0775d3b561d84f1574b485377"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/HumanSignal/homebrew-tap/releases/download/label-studio-1.15.0"
    sha256 arm64_sonoma: "a08608c5e5f956acddcb7fdfe4c3a5a4b54145be90bee5e47d7054000b99e58c"
    sha256 ventura:      "b7e65ddc254a5c91d50d2b29dd34b4a3d0aa87bca88e301190c3988c386f6b2d"
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
