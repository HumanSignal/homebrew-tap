class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/07/de/ff1eb70ce566cdea48632188b5891ecfb3fccfec79c4dbc3b9e08527c187/label_studio-1.21.0.tar.gz"
  sha256 "1ae8c0c3430ee023b89ad0a4d994fe08ff6ff46de6b3566781a0dd54f521c5ba"
  license "Apache-2.0"

  depends_on "cmake" => :build
  depends_on "rust" => :build
  depends_on "apache-arrow"
  depends_on "jpeg-turbo"
  depends_on "libyaml"
  depends_on "opencv"
  depends_on "postgresql@14"
  depends_on "python@3.13" # Apple's Python distribution doesn't include pip
  depends_on "yajl"
  uses_from_macos "libxml2"
  uses_from_macos "libxslt"
  uses_from_macos "zlib"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/c6/78/7d432127c41b50bccba979505f272c16cbcadcc33645d5fa3a738110ae75/anyio-4.11.0.tar.gz"
    sha256 "82a8d0b81e318cc5ce71a5f1f8b5c4e63619620b63141ef8c995fa0db95a57c4"
  end

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/38/61/0b9ae6399dd4a58d8c1b1dc5a27d6f2808023d0b5dd3104bb99f45a33ff6/argcomplete-3.6.3.tar.gz"
    sha256 "62e8ed4fd6a45864acc8235409461b72c9a28ee785a2011cc5eb78318786c89c"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/76/b9/4db2509eabd14b4a8c71d1b24c8d5734c52b8560a7b1e1a8b56c8d25568b/asgiref-3.11.0.tar.gz"
    sha256 "13acff32519542a1736223fb79a715acdebe24286d98e8b164a73085f40da2c4"
  end

  resource "attr" do
    url "https://files.pythonhosted.org/packages/de/be/ddc7f84d4e087144472a38a373d3e319f51a6faf6e5fc1ae897173675f21/attr-0.3.1.tar.gz"
    sha256 "9091548058d17f132596e61fa7518e504f76b9a4c61ca7d86e1f96dbf7d4775d"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/0a/c4/d4ff3bc3ddf155156460bff340bbe9533f99fac54ddea165f35a8619f162/azure_core-1.36.0.tar.gz"
    sha256 "22e5605e6d0bf1d229726af56d9e92bc37b6e726b141a18be0b4d424131741b7"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/36/7c/2fd872e11a88163f208b9c92de273bf64bb22d0eef9048cc6284d128a77a/azure_storage_blob-12.27.1.tar.gz"
    sha256 "a1596cc4daf5dac9be115fcb5db67245eae894cf40e4248243754261f7b674a6"
  end

  resource "black" do
    url "https://files.pythonhosted.org/packages/8c/ad/33adf4708633d047950ff2dfdea2e215d84ac50ef95aff14a614e4b6e9b2/black-25.11.0.tar.gz"
    sha256 "9a323ac32f5dc75ce7470501b887250be5005a01602e931a15e45593f70f6e08"
  end

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/c2/5d/d5d45a38163ede3342d6ac1ca01b5d387329daadf534a25718f9a9ba818c/bleach-5.0.1.tar.gz"
    sha256 "0d03255c47eb9bd2f26aa9bb7f2107732e7e8fe195ca2f64709fcf3b0a4a085c"
  end

  resource "boto" do
    url "https://files.pythonhosted.org/packages/c8/af/54a920ff4255664f5d238b5aebd8eedf7a07c7a5e71e27afcfe840b82f51/boto-2.49.0.tar.gz"
    sha256 "ea0d3b40a2d852767be77ca343b58a9e3a4b00d9db440efb8da74b4e58025e5a"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/90/30/1f1bfb34a97709b5d004d5c16ccac81a73ea6c5ce86ce75eaff0a75aee3f/boto3-1.41.3.tar.gz"
    sha256 "8a89f3900a356879022c1600f72cbb3d8b85708f094d2d08a461bd193d0b07ca"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/8c/e9/d6207e08f35280cb8755b316f0e0a0cd2e8405d1b849e847c26fb4e3e3a6/botocore-1.41.3.tar.gz"
    sha256 "1c6ad338f445c9bf02e231bfa302239d60520ec6dd88ded3206b34dca100103c"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/fb/44/ca1675be2a83aeee1886ab745b28cda92093066590233cc501890eb8417a/cachetools-6.2.2.tar.gz"
    sha256 "8e6d266b25e539df852251cfd6f990b4bc3a141db73b939058d809ebd2590fc6"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a2/8c/58f469717fa48465e4a50c014a0400602d3c437d7c0c468e17ada824da3a/certifi-2025.11.12.tar.gz"
    sha256 "d8ab5478f2ecd78af242878415affce761ca6bc54a22a27e026d7c25357c3316"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/eb/56/b1ba7935a17738ae8453301356628e8147c79dbb825bcbc73dc7401f9846/cffi-2.0.0.tar.gz"
    sha256 "44d1b5909021139fe36001ae048dbdde8214afa20200eda0f64c068cac5d5529"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/9f/33/c00162f49c0e2fe8064a62cb92b93e50c74a72bc370ab92f86112b33ff62/cryptography-46.0.3.tar.gz"
    sha256 "a8b17438104fed022ce745b362294d9ce35b4c2e45c1d958ad4a4b019285f4a1"
  end

  resource "datamodel-code-generator" do
    url "https://files.pythonhosted.org/packages/7e/80/9c71525416a35d5c89e0b1ef0014774049b159707fa88d31d2d0ba4c2369/datamodel_code_generator-0.26.1.tar.gz"
    sha256 "3b7b49c4230fa197ca28847e1e8996cd664638a7e91796c826a61c60d4ccd8a2"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "django" do
    url "https://files.pythonhosted.org/packages/6e/f9/284077f0e61f633e5279518a9ac5924ade4bef12bc841174ca48c57f2438/django-5.1.14.tar.gz"
    sha256 "b98409fb31fdd6e8c3a6ba2eef3415cc5c0020057b43b21ba7af6eff5f014831"
  end

  resource "django-annoying" do
    url "https://files.pythonhosted.org/packages/c7/1a/253fb9c0779de1b6ae631c8c4f50aa8187518d5e87a7ca87a0ad1ccf3d9f/django-annoying-0.10.6.tar.gz"
    sha256 "083b5e26f140f86178fcb47931f69b7ff75181ccd1e318d9c218ae9babc1805e"
  end

  resource "django-cors-headers" do
    url "https://files.pythonhosted.org/packages/93/6c/16f6cb6064c63074fd5b2bd494eb319afd846236d9c1a6c765946df2c289/django_cors_headers-4.7.0.tar.gz"
    sha256 "6fdf31bf9c6d6448ba09ef57157db2268d515d94fc5c89a0a1028e1fc03ee52b"
  end

  resource "django-csp" do
    url "https://files.pythonhosted.org/packages/04/76/bdb879b0e73798a8f5d568d19e77995c0319b82ddfa6c2fee4d15e956e1a/django_csp-3.7.tar.gz"
    sha256 "01eda02ad3f10261c74131cdc0b5a6a62b7c7ad4fd017fbefb7a14776e0a9727"
  end

  resource "django-debug-toolbar" do
    url "https://files.pythonhosted.org/packages/6e/60/25b22fda2f95d01f3936b86f7897871af6bc1dd20adb104e76c55b97a9e7/django-debug-toolbar-3.2.1.tar.gz"
    sha256 "a5ff2a54f24bf88286f9872836081078f4baa843dc3735ee88524e89f8821e33"
  end

  resource "django-environ" do
    url "https://files.pythonhosted.org/packages/55/66/1878c7a9fa6b584f0ed4a60670e3fb977747e724b0ac6470670f980ebc45/django-environ-0.10.0.tar.gz"
    sha256 "b3559a91439c9d774a9e0c1ced872364772c612cdf6dc919506a2b13f7a77225"
  end

  resource "django-extensions" do
    url "https://files.pythonhosted.org/packages/8a/f1/318684c9466968bf9a9c221663128206e460c1a67f595055be4b284cde8a/django-extensions-3.2.3.tar.gz"
    sha256 "44d27919d04e23b3f40231c4ab7af4e61ce832ef46d610cc650d53e68328410a"
  end

  resource "django-filter" do
    url "https://files.pythonhosted.org/packages/50/bc/dc19ae39c235332926dd0efe0951f663fa1a9fc6be8430737ff7fd566b20/django_filter-24.3.tar.gz"
    sha256 "d8ccaf6732afd21ca0542f6733b11591030fa98669f8d15599b358e24a2cd9c3"
  end

  resource "django-migration-linter" do
    url "https://files.pythonhosted.org/packages/3a/2b/721ca8f373edb4a666ec175c6a1761f64cfdde1e3599373a47348aded1a9/django_migration_linter-5.2.0.tar.gz"
    sha256 "ba8b4d5aeacce9a2441c4d863321867eaeb498a873ac6657f91350f5b3119bc7"
  end

  resource "django-model-utils" do
    url "https://files.pythonhosted.org/packages/a5/7c/50b36fb5b1e63888107f0d215cae87197165e47de42b9d4142740547fba4/django-model-utils-4.1.1.tar.gz"
    sha256 "eb5dd05ef7d7ce6bc79cae54ea7c4a221f6f81e2aad7722933aee66489e7264b"
  end

  resource "django-ranged-fileresponse" do
    url "https://files.pythonhosted.org/packages/4e/ff/16d0491fc0d4afe4b1e158d9ebc2077d8efaa9489a4ae62ad0f390e7c986/django-ranged-fileresponse-0.1.2.tar.gz"
    sha256 "afafc1b0bbabfe8457e903e06139f1b18b9a1951a80a37453749b8afd5a63a73"
  end

  resource "django-rq" do
    url "https://files.pythonhosted.org/packages/24/65/3727ab9f92c780fb23e8c9939097384fb5ff66e6127a4225b58c57f8051c/django-rq-2.10.3.tar.gz"
    sha256 "572f2e142a4e4a2f68b3601eef6ddfb041c470dfc7028c975981f7bb942e184c"
  end

  resource "django-storages" do
    url "https://files.pythonhosted.org/packages/17/1d/fc2055860a7bbade74659874305e831fa24fe9b8f5a582aa8a0e650352d2/django-storages-1.12.3.tar.gz"
    sha256 "a475edb2f0f04c4f7e548919a751ecd50117270833956ed5bd585c0575d2a5e7"
  end

  resource "django-user-agents" do
    url "https://files.pythonhosted.org/packages/37/f2/dd96cc880d7549cc9f67c8b1ad8e6695f9731658fdf8aa476f0bcb9c89c7/django-user_agents-0.4.0.tar.gz"
    sha256 "cda8ae2146cee30e6867a07943f56ecc570b4391d725ab5309901a8b3e4a3514"
  end

  resource "djangorestframework" do
    url "https://files.pythonhosted.org/packages/2c/ce/31482eb688bdb4e271027076199e1aa8d02507e530b6d272ab8b4481557c/djangorestframework-3.15.2.tar.gz"
    sha256 "36fe88cd2d6c6bec23dca9804bab2ba5517a8bb9d8f47ebc68981b56840107ad"
  end

  resource "djangorestframework-simplejwt" do
    url "https://files.pythonhosted.org/packages/a8/27/2874a325c11112066139769f7794afae238a07ce6adf96259f08fd37a9d7/djangorestframework_simplejwt-5.5.1.tar.gz"
    sha256 "e72c5572f51d7803021288e2057afcbd03f17fe11d484096f40a460abc76e87f"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/8c/8b/57666417c0f90f08bcafa776861060426765fdb422eb10212086fb811d26/dnspython-2.8.0.tar.gz"
    sha256 "181d3c6996452cb1189c4046c61599b84a5a86e099562ffde77d26984ff26d0f"
  end

  resource "drf-dynamic-fields" do
    url "https://files.pythonhosted.org/packages/ea/93/47a00626ee1b6764932cc8d3fea318cb17fc1554f30fd4b13c84291aed7d/drf_dynamic_fields-0.3.0.tar.gz"
    sha256 "245eed41664976451b51ab9b59af179692ab6d8ee260a6b85ac2d44d2b06f5b4"
  end

  resource "drf-flex-fields" do
    url "https://files.pythonhosted.org/packages/5e/1f/1bb84adc99cd1682520b60a29b857af4ffad35dda41feac3967bcd552b72/drf-flex-fields-0.9.5.tar.gz"
    sha256 "4551a80e60fa505c947bd17cfc3a06f74d5baa3e6905b7447f18c2f8f088661d"
  end

  resource "drf-generators" do
    url "https://files.pythonhosted.org/packages/18/8e/2895e6a2707eb41e49f1288e075e9de37732dff755af07e19071238650e5/drf-generators-0.3.0.tar.gz"
    sha256 "9824dcf147e18b1336ec41c0e905d45290b22862d62ee7f1b2c40c7c75435e77"
  end

  resource "drf-spectacular" do
    url "https://files.pythonhosted.org/packages/da/b9/741056455aed00fa51a1df41fad5ad27c8e0d433b6bf490d4e60e2808bc6/drf_spectacular-0.28.0.tar.gz"
    sha256 "2c778a47a40ab2f5078a7c42e82baba07397bb35b074ae4680721b2805943061"
  end

  resource "email-validator" do
    url "https://files.pythonhosted.org/packages/f5/22/900cb125c76b7aaa450ce02fd727f452243f2e91a61af068b40adba60ea9/email_validator-2.3.0.tar.gz"
    sha256 "9fc05c37f2f6cf439ff414f8fc46d917929974a82244c20eb10231ba60c54426"
  end

  resource "expiringdict" do
    url "https://files.pythonhosted.org/packages/fc/62/c2af4ebce24c379b949de69d49e3ba97c7e9c9775dc74d18307afa8618b7/expiringdict-1.2.2.tar.gz"
    sha256 "300fb92a7e98f15b05cf9a856c1415b3bc4f2e132be07daa326da6414c23ee09"
  end

  resource "faker" do
    url "https://files.pythonhosted.org/packages/64/27/022d4dbd4c20567b4c294f79a133cc2f05240ea61e0d515ead18c995c249/faker-38.2.0.tar.gz"
    sha256 "20672803db9c7cb97f9b56c18c54b915b6f1d8991f63d1d673642dc43f5ce7ab"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/58/46/0028a82567109b5ef6e4d2a1f04a583fb513e6cf9527fcdd09afd817deeb/filelock-3.20.0.tar.gz"
    sha256 "711e943b4ec6be42e1d4e6690b48dc175c822967466bb31c0c293f34334c13f4"
  end

  resource "genson" do
    url "https://files.pythonhosted.org/packages/c5/cf/2303c8ad276dcf5ee2ad6cf69c4338fd86ef0f471a5207b069adf7a393cf/genson-1.3.0.tar.gz"
    sha256 "e02db9ac2e3fd29e65b5286f7135762e2cd8a986537c075b06fc5f1517308e37"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/61/da/83d7043169ac2c8c7469f0e375610d78ae2160134bf1b80634c482fa079c/google_api_core-2.28.1.tar.gz"
    sha256 "2b405df02d68e68ce0fbc138559e6036559e685159d148ae5861013dc201baf8"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/ff/ef/66d14cf0e01b08d2d51ffc3c20410c4e134a1548fc246a6081eae585a4fe/google_auth-2.43.0.tar.gz"
    sha256 "88228eee5fc21b62a1b5fe773ca15e67778cb07dc8363adcb4a8827b52d81483"
  end

  resource "google-cloud-appengine-logging" do
    url "https://files.pythonhosted.org/packages/9a/6e/260266e5fa7283b721bbef012f3223d514e2569446f56786fe0c80aa0fd4/google_cloud_appengine_logging-1.7.0.tar.gz"
    sha256 "ea9ce73430cfc99f8957fd7df97733f9a759d4caab65e19d63a7474f012ffd94"
  end

  resource "google-cloud-audit-log" do
    url "https://files.pythonhosted.org/packages/c7/d2/ad96950410f8a05e921a6da2e1a6ba4aeca674bbb5dda8200c3c7296d7ad/google_cloud_audit_log-0.4.0.tar.gz"
    sha256 "8467d4dcca9f3e6160520c24d71592e49e874838f174762272ec10e7950b6feb"
  end

  resource "google-cloud-core" do
    url "https://files.pythonhosted.org/packages/a6/03/ef0bc99d0e0faf4fdbe67ac445e18cdaa74824fd93cd069e7bb6548cb52d/google_cloud_core-2.5.0.tar.gz"
    sha256 "7c1b7ef5c92311717bd05301aa1a91ffbc565673d3b0b4163a52d8413a186963"
  end

  resource "google-cloud-logging" do
    url "https://files.pythonhosted.org/packages/14/9c/d42ecc94f795a6545930e5f846a7ae59ff685ded8bc086648dd2bee31a1a/google_cloud_logging-3.12.1.tar.gz"
    sha256 "36efc823985055b203904e83e1c8f9f999b3c64270bcda39d57386ca4effd678"
  end

  resource "google-cloud-storage" do
    url "https://files.pythonhosted.org/packages/36/76/4d965702e96bb67976e755bed9828fa50306dca003dbee08b67f41dd265e/google_cloud_storage-2.19.0.tar.gz"
    sha256 "cd05e9e7191ba6cb68934d8eb76054d9be4562aa89dbc4236feee4d7d51342b2"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/19/ae/87802e6d9f9d69adfaedfcfd599266bf386a54d0be058b532d04c794f76d/google_crc32c-1.7.1.tar.gz"
    sha256 "2bff2305f98846f3e825dbeec9ee406f89da7962accdb29356e4eadc251bd472"
  end

  resource "google-resumable-media" do
    url "https://files.pythonhosted.org/packages/64/d7/520b62a35b23038ff005e334dba3ffc75fcf583bee26723f1fd8fd4b6919/google_resumable_media-2.8.0.tar.gz"
    sha256 "f1157ed8b46994d60a1bc432544db62352043113684d4e030ee02e77ebe9a1ae"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/e5/7b/adfd75544c415c487b33061fe7ae526165241c1ea133f9a9125a56b39fd8/googleapis_common_protos-1.72.0.tar.gz"
    sha256 "e55a601c1b32b52d7a3e65f43563e2aa61bcd737998ee672ac9b951cd49319f5"
  end

  resource "grpc-google-iam-v1" do
    url "https://files.pythonhosted.org/packages/76/1e/1011451679a983f2f5c6771a1682542ecb027776762ad031fd0d7129164b/grpc_google_iam_v1-0.14.3.tar.gz"
    sha256 "879ac4ef33136c5491a6300e27575a9ec760f6cdf9a2518798c1b8977a5dc389"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/b6/e0/318c1ce3ae5a17894d5791e87aea147587c9e702f24122cc7a5c8bbaeeb1/grpcio-1.76.0.tar.gz"
    sha256 "7be78388d6da1a25c0d5ec506523db58b18be22d9c37d8d3a32c08be4987bd73"
  end

  resource "grpcio-status" do
    url "https://files.pythonhosted.org/packages/3f/46/e9f19d5be65e8423f886813a2a9d0056ba94757b0c5007aa59aed1a961fa/grpcio_status-1.76.0.tar.gz"
    sha256 "25fcbfec74c15d1a1cb5da3fab8ee9672852dc16a5a9eeb5baf7d7a9952943cd"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "ijson" do
    url "https://files.pythonhosted.org/packages/2d/30/7ab4b9e88e7946f6beef419f74edcc541df3ea562c7882257b4eaa82417d/ijson-3.4.0.post0.tar.gz"
    sha256 "9aa02dc70bb245670a6ca7fba737b992aeeb4895360980622f7e568dbf23e41e"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/76/66/650a33bd90f786193e4de4b3ad86ea60b53c89b669a5c7be931fac31cdb0/importlib_metadata-8.7.0.tar.gz"
    sha256 "d13b81ad223b890aa16c5471f2ac3056cf76c5f10f82d6f9292f0b415f389000"
  end

  resource "inflect" do
    url "https://files.pythonhosted.org/packages/cb/db/cae5d8524c4b5e574c281895b212062f3b06d0e14186904ed71c538b4e90/inflect-5.6.2.tar.gz"
    sha256 "aadc7ed73928f5e014129794bbac03058cca35d0a973a5fc4eb45c7fa26005f9"
  end

  resource "inflection" do
    url "https://files.pythonhosted.org/packages/e1/7e/691d061b7329bc8d54edbf0ec22fbfb2afe61facb681f9aaa9bff7a27d04/inflection-0.5.1.tar.gz"
    sha256 "1a29730d366e996aaacffb2f1f1cb9593dc38e2ddd30c91250c6dde09ea9b417"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
    sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
  end

  resource "isort" do
    url "https://files.pythonhosted.org/packages/87/f9/c1eb8635a24e87ade2efce21e3ce8cd6b8630bb685ddc9cdaca1349b2eb5/isort-5.13.2.tar.gz"
    sha256 "48fdfcb9face5d58a4f6dde2e72a1fb8dcaf8ab26f95ab49fab84c2ddefb0109"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/45/9d/e0660989c1370e25848bb4c52d061c71837239738ad937e83edca174c273/jiter-0.12.0.tar.gz"
    sha256 "64dfcd7d5c168b38d3f9f8bba7fc639edb3418abcc74f22fdbe6b8938293f30b"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/e8/5d/447af5ea094b9e4c4054f82e223ada074c552335b9b4b2d14bd9b35a67c4/joblib-1.5.2.tar.gz"
    sha256 "3faa5c39054b2f03ca547da9b2f52fde67c06240c31853f306aea97f13647b55"
  end

  resource "jsf" do
    url "https://files.pythonhosted.org/packages/8d/34/cf272dfe4277ce03b275bb9f5e99001b31db01b21c290fd262333c96e34a/jsf-0.11.2.tar.gz"
    sha256 "07055b363281d38ce871a9256a00587d8472802c5108721a7fe5884465104b5d"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/74/69/f7185de793a29082a9f3c7728268ffb31cb5095131a9c139a74078e27336/jsonschema-4.25.1.tar.gz"
    sha256 "e4a9655ce0da0c0b67a085847e00a3a51449e1157f4f75e9fb5aa545e122eb85"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "label-studio-sdk" do
    url "https://files.pythonhosted.org/packages/d1/4e/4cec392020b08869cab1c89c800c0e663841eb9b1333544138774c0b27b7/label_studio_sdk-2.0.4.tar.gz"
    sha256 "79d1b8c768e428f24c01a53093c2092d1912cd3154b4c45cb050f59b9065af6c"
  end

  resource "launchdarkly-server-sdk" do
    url "https://files.pythonhosted.org/packages/86/c1/ab3fc7ca235a4c5b7820d07fc0c8c3a278451a4de0c3002ee78540ac4968/launchdarkly-server-sdk-8.2.1.tar.gz"
    sha256 "94adbd52f635ad2f1a8b4a835cbbe4ce77919a6915136b303eaca3e2a54903be"
  end

  resource "lockfile" do
    url "https://files.pythonhosted.org/packages/17/47/72cb04a58a35ec495f96984dddb48232b551aafb95bde614605b754fe6f7/lockfile-0.12.2.tar.gz"
    sha256 "6aed02de03cba24efabcd600b30540140634fc06cfa603822d508d5361e9f799"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/aa/88/262177de60548e5a2bfc46ad28232c9e9cbde697bd94132aeb80364675cb/lxml-6.0.2.tar.gz"
    sha256 "cd79f3367bd74b317dda655dc8fcfa304d9eb6e4fb06b7168c5cf27f96e0cd62"
  end

  resource "lxml-html-clean" do
    url "https://files.pythonhosted.org/packages/d9/cb/c9c5bb2a9c47292e236a808dd233a03531f53b626f36259dcd32b49c76da/lxml_html_clean-0.4.3.tar.gz"
    sha256 "c9df91925b00f836c807beab127aac82575110eacff54d0a75187914f1bd9d8c"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/a2/6e/371856a3fb9d31ca8dac321cda606860fa4548858c0cc45d9d1d4ca2628b/mypy_extensions-1.1.0.tar.gz"
    sha256 "52e68efc3284861e772bbcd66823fde5ae21fd2fdb51c62a211403730b916558"
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/f9/76/3a5e4312c19a028770f86fd7c058cf9f4ec4321c6cf7526bab998a5b683c/nltk-3.9.2.tar.gz"
    sha256 "0f409e9b069ca4177c1903c3e843eef90c7e92992fa4931ae607da6de49e1419"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/65/6e/09db70a523a96d25e115e71cc56a6f9031e7b8cd166c1ac8438307c14058/numpy-1.26.4.tar.gz"
    sha256 "2a02aba9ed12e4ac4eb3ea9421c420301a0c6460d9830d74a9df87efa4912010"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/c6/a1/a303104dc55fc546a3f6914c842d3da471c64eec92043aef8f652eb6c524/openai-1.109.1.tar.gz"
    sha256 "d173ed8dbca665892a6db099b4a2dfac624f94d20a93f46eb0b56aae940ed869"
  end

  resource "opencv-python" do
    url "https://files.pythonhosted.org/packages/17/06/68c27a523103dad5837dc5b87e71285280c4f098c60e4fe8a8db6486ab09/opencv-python-4.11.0.86.tar.gz"
    sha256 "03d60ccae62304860d232272e4a4fda93c39d595780cb40b161b310244b736a4"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/08/d8/0f354c375628e048bd0570645b310797299754730079853095bf000fba69/opentelemetry_api-1.38.0.tar.gz"
    sha256 "f4c193b5e8acb0912b06ac5b16321908dd0843d75049c091487322284a3eea12"
  end

  resource "ordered-set" do
    url "https://files.pythonhosted.org/packages/f5/ab/8252360bfe965bba31ec05112b3067bd129ce4800d89e0b85613bc6044f6/ordered-set-4.0.2.tar.gz"
    sha256 "ba93b2df055bca202116ec44b9bead3df33ea63a7d5827ff8e16738b97f33a95"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/a1/d4/1fc4078c65507b51b96ca8f8c3ba19e6a61c8253c72794544580a7b6c24d/packaging-25.0.tar.gz"
    sha256 "d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/33/01/d40b85317f86cf08d853a4f495195c73815fdf205eef3993821720274518/pandas-2.3.3.tar.gz"
    sha256 "e05e1af93b977f7eafa636d043f9f94c7ee3ac81af99c13508215942e64c993b"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/ca/bc/f35b8446f4531a7cb215605d100cd88b7ac6f44ab3fc94870c120ab3adbf/pathspec-0.12.1.tar.gz"
    sha256 "a482d51503a1ab33b1c67a6c3813a26953dbdc71c31dacaef9a838c4e29f5712"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/5a/b0/cace85a1b0c9775a9f8f5d5423c8261c858760e2466c79b2dd184638b056/pillow-12.0.0.tar.gz"
    sha256 "87d4f8125c9988bfbed67af47dd7a953e2fc7b0cc1e7800ec6d2080d490bb353"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/61/33/9611380c2bdb1225fdef633e2a9610622310fed35ab11dac9620972ee088/platformdirs-4.5.0.tar.gz"
    sha256 "70ddccdd7c99fc5942e9fc25636a8b34d04c24b335100223152c2803e4063312"
  end

  resource "proto-plus" do
    url "https://files.pythonhosted.org/packages/f4/ac/87285f15f7cce6d4a008f33f1757fb5a13611ea8914eb58c3d0d26243468/proto_plus-1.26.1.tar.gz"
    sha256 "21a515a4c4c0088a773899e23c7bbade3d18f9c66c73edd4c7ee3816bc96a012"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/0a/03/a1440979a3f74f16cab3b75b0da1a1a7f922d56a8ddea96092391998edc0/protobuf-6.33.1.tar.gz"
    sha256 "97f65757e8d09870de6fd973aeddb92f85435607235d20b2dfed93405d00c85b"
  end

  resource "psycopg2-binary" do
    url "https://files.pythonhosted.org/packages/cb/0e/bdc8274dc0585090b4e3432267d7be4dfbfd8971c0fa59167c711105a6bf/psycopg2-binary-2.9.10.tar.gz"
    sha256 "4b3df0e6990aa98acda57d983942eff13d824135fe2250e6522edaa782a06de2"
  end

  resource "pyarrow" do
    url "https://files.pythonhosted.org/packages/7f/7b/640785a9062bb00314caa8a387abce547d2a420cf09bd6c715fe659ccffb/pyarrow-18.1.0.tar.gz"
    sha256 "9386d3ca9c145b5539a1cfc75df07757dff870168c959b473a0bccbc3abc8c73"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/ba/e9/01f1a64245b89f039897cb0130016d79f77d52669aae6ee7b159a6c4c018/pyasn1-0.6.1.tar.gz"
    sha256 "6f580d2bdd84365380830acf45550f2511469f673cb4a5ae3857a3170128b034"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/e9/e6/78ebbb10a8c8e4b61a59249394a4a594c1a7af95593dc933a349c8d00964/pyasn1_modules-0.4.2.tar.gz"
    sha256 "677091de870a80aae844b1ca6134f54652fa2c8c5a52aa396440ac3106e941e6"
  end

  resource "pyboxen" do
    url "https://files.pythonhosted.org/packages/46/e7/ade6ddc8ef255e2a3c112c6ab3210f70d26df79dbc2af53922e182bbc42f/pyboxen-1.3.0.tar.gz"
    sha256 "f12e6c656769f9d6aa1dd5d11688a62ed12da9dcebfa22a242103c610130b948"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/fe/cf/d2d3b9f5699fb1e4615c8e32ff220203e43b248e1dfcc6736ad9057731ca/pycparser-2.23.tar.gz"
    sha256 "78816d4f24add8f10a06d6f05b4d424ad9e96cfebf68a4ddc99c65c0720d00c2"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/96/ad/a17bc283d7d81837c061c49e3eaa27a45991759a1b7eae1031921c6bd924/pydantic-2.12.4.tar.gz"
    sha256 "0f8cb9555000a4b5b617f66bfd2566264c4984b27589d3b845685983e8ea85ac"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "pyjwt" do
    url "https://files.pythonhosted.org/packages/e7/46/bd74733ff231675599650d3e47f361794b22ef3e3770998dda30d3b63726/pyjwt-2.10.1.tar.gz"
    sha256 "3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953"
  end

  resource "pyrfc3339" do
    url "https://files.pythonhosted.org/packages/b4/7f/3c194647ecb80ada6937c38a162ab3edba85a8b6a58fa2919405f4de2509/pyrfc3339-2.1.0.tar.gz"
    sha256 "c569a9714faf115cdb20b51e830e798c1f4de8dabb07f6ff25d221b5d09d8d7f"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-json-logger" do
    url "https://files.pythonhosted.org/packages/0a/c9/3d58b02da0966cd3067ebf99f454bfa01b18d83cfa69b5fb09ddccf94066/python-json-logger-2.0.4.tar.gz"
    sha256 "764d762175f99fcc4630bd4853b09632acb60a6224acb27ce08cd70f0b1b81bd"
  end

  resource "pytokens" do
    url "https://files.pythonhosted.org/packages/4e/8d/a762be14dae1c3bf280202ba3172020b2b0b4c537f94427435f19c413b72/pytokens-0.3.0.tar.gz"
    sha256 "2f932b14ed08de5fcf0b391ace2642f858f1394c0857202959000b68ed7a458a"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/03/3e/dc5c793b62c60d0ca0b7e58f1fdd84d5aaa9f8df23e7589b39cc9ce20a03/pytz-2022.7.1.tar.gz"
    sha256 "01a0681c4b9684a28304615eba55d1ab31ae00bf68ec157ec3708a8182dbbcd0"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/47/da/d283a37303a995cd36f8b92db85135153dc4f7a8e4441aa827721b442cfb/redis-5.2.1.tar.gz"
    sha256 "16f2e22dff21d5125e8481515e386711a34cbec50f0e44413dd7d9c060a54e0f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/cc/a9/546676f25e573a4cf00fe8e119b78a37b6a8fe2dc95cda877b30889c9c45/regex-2025.11.3.tar.gz"
    sha256 "1fedc720f9bb2494ce31a58a1631f9c82df6a09b49c19517ea5cc280b4541e01"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "requests-file" do
    url "https://files.pythonhosted.org/packages/3c/f8/5dc70102e4d337063452c82e1f0d95e39abfe67aa222ed8a5ddeb9df8de8/requests_file-3.0.1.tar.gz"
    sha256 "f14243d7796c588f3521bd423c5dea2ee4cc730e54a3cac9574d78aca1272576"
  end

  resource "requests-mock" do
    url "https://files.pythonhosted.org/packages/92/32/587625f91f9a0a3d84688bf9cfc4b2480a7e8ec327cefd0ff2ac891fd2cf/requests-mock-1.12.1.tar.gz"
    sha256 "e9e12e333b525156e82a3c852f22016b9158220d2f47454de9cae8a77d371401"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/fb/d2/8920e102050a0de7bfabeb4c4614a49248cf8d5d7a8d01885fbb24dc767a/rich-14.2.0.tar.gz"
    sha256 "73ff50c7c0c1c77c8243079283f4edb376f0f6442433aecb8ce7e6d0b92d1fe4"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/98/33/23b3b3419b6a3e0f559c7c0d2ca8fc1b9448382b25245033788785921332/rpds_py-0.29.0.tar.gz"
    sha256 "fe55fe686908f50154d1dc599232016e50c243b438c3b7432f24e2895b0e5359"
  end

  resource "rq" do
    url "https://files.pythonhosted.org/packages/c5/1d/a020e8f3559293635dd6283d037bfc15f866136498da3db1e5416c65773d/rq-1.16.2.tar.gz"
    sha256 "5c5b9ad5fbaf792b8fada25cc7627f4d206a9a4455aced371d4f501cc3f13b34"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/da/8a/22b7beea3ee0d44b1916c0c1cb0ee3af23b700b6da9f04991899d0c555d4/rsa-4.9.1.tar.gz"
    sha256 "e7bdbfdb5497da4c07dfd35530e1a902659db6ff241e39d9953cad06ebd0ae75"
  end

  resource "rstr" do
    url "https://files.pythonhosted.org/packages/9f/80/d7449656d45a776b7a443ce3af4eb97c4debe416a1a80f60311c7cfd02ff/rstr-3.2.2.tar.gz"
    sha256 "c4a564d4dfb4472d931d145c43d1cf1ad78c24592142e7755b8866179eeac012"
  end

  resource "rules" do
    url "https://files.pythonhosted.org/packages/63/dd/06b3621f65133680297215d23567b4b83f939fe5a7b6ce92244d70950b94/rules-3.4.tar.gz"
    sha256 "c4702c1d60ca43e97d4dfced31e98274c652dea3c461105d8df6186d663e3212"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/ca/bb/940d6af975948c1cc18f44545ffb219d3c35d78ec972b42ae229e8e37e08/s3transfer-0.15.0.tar.gz"
    sha256 "d36fac8d0e3603eff9b5bfa4282c7ce6feb0301a633566153cbd0b93d11d8379"
  end

  resource "semver" do
    url "https://files.pythonhosted.org/packages/72/d1/d3159231aec234a59dd7d601e9dd9fe96f3afff15efd33c1070019b26132/semver-3.0.4.tar.gz"
    sha256 "afc7d8c584a5ed0a11033af086e8af226a9c0b206f313e0301f8dd7b6b589602"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/7c/d7/c140a5837649e2bf2ec758494fde1d9a016c76777eab64e75ef38d685bbb/sentry_sdk-2.46.0.tar.gz"
    sha256 "91821a23460725734b7741523021601593f35731808afc0bb2ba46c27b8acd91"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/18/5d/3bf57dcd21979b887f014ea83c24ae194cfcd12b9e0fda66b957c69d1fca/setuptools-80.9.0.tar.gz"
    sha256 "f36b47402ecde768dbfafc46e8e4207b4360c654f1f3bb84475f0a28628fb19c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "smart-open" do
    url "https://files.pythonhosted.org/packages/67/9a/0a7acb748b86e2922982366d780ca4b16c33f7246fa5860d26005c97e4f3/smart_open-7.5.0.tar.gz"
    sha256 "f394b143851d8091011832ac8113ea4aba6b92e6c35f6e677ddaaccb169d7cb9"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/e5/40/edede8dd6977b0d3da179a342c198ed100dd2aba4be081861ee5911e4da4/sqlparse-0.5.3.tar.gz"
    sha256 "09f67787f56a0b16ecdbde1bfc7f5d9c3371ca683cfeaa8e6ff60b4807ec9272"
  end

  resource "tldextract" do
    url "https://files.pythonhosted.org/packages/97/78/182641ea38e3cfd56e9c7b3c0d48a53d432eea755003aa544af96403d4ac/tldextract-5.3.0.tar.gz"
    sha256 "b3d2b70a1594a0ecfa6967d57251527d58e00bb5a91a74387baa0d87a0678609"
  end

  resource "toml" do
    url "https://files.pythonhosted.org/packages/be/ba/1f744cdc819428fc6b5084ec34d9b30660f6f9daaf70eead706e3203ec3c/toml-0.10.2.tar.gz"
    sha256 "b3bda1d108d5dd99f4a20d24d9c348e91c4db7ab1b749200bded2f839ccbe68f"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/a8/4b/29b4ef32e036bb34e4ab51796dd745cdba7ed47ad142a9f4a1eb8e0c744d/tqdm-4.67.1.tar.gz"
    sha256 "f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/95/32/1a225d6164441be760d75c2c42e2780dc0873fe382da3e98a2e1e48361e5/tzdata-2025.2.tar.gz"
    sha256 "b60a638fcc0daffadf82fe0f57e53d06bdec2f36c4df66280ae79bce6bd6f2b9"
  end

  resource "ua-parser" do
    url "https://files.pythonhosted.org/packages/70/0e/ed98be735bc89d5040e0c60f5620d0b8c04e9e7da99ed1459e8050e90a77/ua_parser-1.0.1.tar.gz"
    sha256 "f9d92bf19d4329019cef91707aecc23c6d65143ad7e29a233f0580fb0d15547d"
  end

  resource "ua-parser-builtins" do
    url "https://files.pythonhosted.org/packages/6f/d3/13adff37f15489c784cc7669c35a6c3bf94b87540229eedf52ef2a1d0175/ua_parser_builtins-0.18.0.post1-py3-none-any.whl"
    sha256 "eb4f93504040c3a990a6b0742a2afd540d87d7f9f05fd66e94c101db1564674d"
  end

  resource "ujson" do
    url "https://files.pythonhosted.org/packages/43/d9/3f17e3c5773fb4941c68d9a37a47b1a79c9649d6c56aefbed87cc409d18a/ujson-5.11.0.tar.gz"
    sha256 "e204ae6f909f099ba6b6b942131cee359ddda2b6e4ea39c12eb8b991fe2010e0"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz"
    sha256 "3fc47733c7e419d4bc3f6b3dc2b4f890bb743906a30d56ba4a5bfa4bbff92760"
  end

  resource "user-agents" do
    url "https://files.pythonhosted.org/packages/e3/e1/63c5bfb485a945010c8cbc7a52f85573561737648d36b30394248730a7bc/user-agents-2.2.0.tar.gz"
    sha256 "d36d25178db65308d1458c5fa4ab39c9b2619377010130329f3955e7626ead26"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/fc/ef/0335f7217dd1e8096a9e8383e1d472aa14717878ffe07c4772e68b6e8735/wheel-0.40.0.tar.gz"
    sha256 "cd1196f3faee2b31968d626e1731c94f99cbdb67cf5a46e4f5656cbee7738873"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/49/2a/6de8a50cb435b7f42c46126cf1a54b2aab81784e74c8595c8e025e8f36d3/wrapt-2.0.1.tar.gz"
    sha256 "9c9c635e78497cacb81e84f8b11b23e0aacac7a136e73b8e5b2109a1d9fc468f"
  end

  resource "xmljson" do
    url "https://files.pythonhosted.org/packages/e8/6f/d9f109ba19be510fd3098bcb72143c67ca6743cedb48ac75aef05ddfe960/xmljson-0.2.1.tar.gz"
    sha256 "b4158e66aa1e62ee39f7f80eb2fe4f767670ba3c0d5de9804420dc53427fdec8"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/e3/02/0f2892c661036d50ede074e376733dca2ae7c6eb617489437771209d4180/zipp-3.23.0.tar.gz"
    sha256 "a07157588a12518c9d4034df3fbbee09c814741a33ff63c05fa29d26a2404166"
  end

  def install
    # Set SOURCE_DATE_EPOCH to avoid "ZIP does not support timestamps before 1980" error
    # This can happen when building packages with files that have very old timestamps
    ENV["SOURCE_DATE_EPOCH"] = "315532800" # 1980-01-01 00:00:00 UTC
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/label-studio", "--help"
  end
end
