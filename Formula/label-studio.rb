class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/07/de/ff1eb70ce566cdea48632188b5891ecfb3fccfec79c4dbc3b9e08527c187/label_studio-1.21.0.tar.gz"
  sha256 "1ae8c0c3430ee023b89ad0a4d994fe08ff6ff46de6b3566781a0dd54f521c5ba"
  license "Apache-2.0"

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

  # Skip dylib ID change for jiter and OpenCV libraries that have flat namespace issues
  skip_clean "libexec/lib/python3.10/site-packages/cv2/.dylibs"
  skip_clean "libexec/lib/python3.10/site-packages/jiter"

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
