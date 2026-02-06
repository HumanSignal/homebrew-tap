class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/ff/7e/78872e38957816016a29887c3507ca533d302f37777bf3f4e3f504d29a7a/label_studio-1.22.0.tar.gz"
  sha256 "71fda47c474f51f27b84ce91ff9823e364c26e37132664a7ae03a4da2b3c48d6"
  license "Apache-2.0"

  depends_on "postgresql@14"
  depends_on "python@3.10" # Apple's Pypthon distribution does not include pip

  def install
    python3 = "python3.10"
    venv = virtualenv_create(libexec, python3, system_site_packages: true, without_pip: false)
    system libexec/"bin/pip", "install", "--verbose", "--upgrade", "pip==22.3.1"
    # Install opencv-python-headless first to avoid problematic opencv-python dylibs with flat namespace
    system libexec/"bin/pip", "install", "--verbose", "opencv-python-headless"
    system libexec/"bin/pip", "install", "--verbose", "--ignore-installed", buildpath
    system libexec/"bin/pip", "uninstall", "-y", "label-studio"
    venv.pip_install_and_link buildpath

    # Remove problematic dylibs with flat namespace from opencv-python-headless
    # These specific libs (libb2, libtheoradec, libtheoraenc) are not critical for label-studio
    Dir[libexec/"lib/python3.10/site-packages/cv2/.dylibs/libb2*.dylib"].each { |f| rm f }
    Dir[libexec/"lib/python3.10/site-packages/cv2/.dylibs/libtheoradec*.dylib"].each { |f| rm f }
    Dir[libexec/"lib/python3.10/site-packages/cv2/.dylibs/libtheoraenc*.dylib"].each { |f| rm f }
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
