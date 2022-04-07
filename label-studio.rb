class LabelStudio < Formula
  include Language::Python::Virtualenv

  desc "Label Studio is a multi-type data labeling and annotation tool with standardized output format"
  homepage "https://labelstud.io"
  url "https://files.pythonhosted.org/packages/79/07/d4bee21e504c6e4ea738292144142ddf2ef1f612c14a6b213805bb5aefc9/label-studio-1.4.1.post1.tar.gz"
  sha256 "d651c365fad7e971ca7129f3a74943979449893fbcd71fc4dde0932e4e45e787"
  license "Apache-2.0"

  depends_on "python@3.8"
  depends_on "postgresql"
  depends_on "pillow"
  depends_on "rust" => :build


  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/ea/2b/3face3a7241f61dc1c58dbe243cc02c15c61ccdcafebc4406f7bb40ce731/asgiref-3.5.0.tar.gz"
    sha256 "2f8abc20f7248433085eda803936d98992f1343ddb022065779f37c5da0181d0"
  end

  resource "async-timeout" do
    url "https://files.pythonhosted.org/packages/54/6e/9678f7b2993537452710ffb1750c62d2c26df438aa621ad5fa9d1507a43a/async-timeout-4.0.2.tar.gz"
    sha256 "2163e1640ddb52b7a8c80d0a67a08587e5d245cc9c553a74a847056bc2976b15"
  end

  resource "attr" do
    url "https://files.pythonhosted.org/packages/de/be/ddc7f84d4e087144472a38a373d3e319f51a6faf6e5fc1ae897173675f21/attr-0.3.1.tar.gz"
    sha256 "9091548058d17f132596e61fa7518e504f76b9a4c61ca7d86e1f96dbf7d4775d"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/d7/77/ebb15fc26d0f815839ecd897b919ed6d85c050feeb83e100e020df9153d2/attrs-21.4.0.tar.gz"
    sha256 "626ba8234211db98e869df76230a137c4c40a12d72445c45d5f5b716f076e2fd"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/20/d3/4d3cab5bba6ed016c5a411348a3d01fa0f1a4e48eb9ff9b8e2d51ef79901/azure-core-1.23.1.zip"
    sha256 "28a01dfbaf0a6812c4e2a82d1642ea30956a9739f25bc77c9b23b91f4ea68f0f"
  end

  resource "azure-storage-blob" do
    url "https://files.pythonhosted.org/packages/9b/04/c071e9e87d61e7328b76523fe16665646f4a558ba3c82b15e276a233e22b/azure-storage-blob-12.11.0.zip"
    sha256 "49535b3190bb69d0d9ff7a383246b14da4d2b1bdff60cae5f9173920c67ca7ee"
  end

  resource "boto" do
    url "https://files.pythonhosted.org/packages/c8/af/54a920ff4255664f5d238b5aebd8eedf7a07c7a5e71e27afcfe840b82f51/boto-2.49.0.tar.gz"
    sha256 "ea0d3b40a2d852767be77ca343b58a9e3a4b00d9db440efb8da74b4e58025e5a"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/fd/93/6269b13861534ea6f45be17da91f33a7be95620db422f3b8ab52ea27b137/boto3-1.16.63.tar.gz"
    sha256 "c919dac9773115025e1e2a7e462f60ca082e322bb6f4354247523e4226133b0b"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/a9/d5/e033ed633d16ebafe72c07abaf8d64131c38a76ad8c3fb0762ee5374b950/botocore-1.19.63.tar.gz"
    sha256 "d3694f6ef918def8082513e5ef309cd6cd83b612e9984e3a66e8adc98c650a92"
  end

  resource "boxing" do
    url "https://files.pythonhosted.org/packages/b6/f9/669ffec2aaee2442db88cbc40d86ccac222c5dc2349c39cf52d0f1d546e4/boxing-0.1.4.tar.gz"
    sha256 "b9141bd02d0fb5ebda881e727e16ce7c89034773282b29b8ce938a8117e79d1b"
  end

  resource "cachetools" do
    url "https://files.pythonhosted.org/packages/d7/69/c457a860456cbf80ecc2e44ed4c201b49ec7ad124d769b71f6d0a7935dca/cachetools-4.2.4.tar.gz"
    sha256 "89ea6f1b638d5a73a4f9226be57ac5e4f399d22770b92355f92dcb0f7f001693"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
    sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/00/9e/92de7e1217ccc3d5f352ba21e52398372525765b2e0c4530e6eb2ba9282a/cffi-1.15.0.tar.gz"
    sha256 "920f0d66a896c2d99f0adbb391f990a84091179542c205fa53ce5787aff87954"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/56/31/7bcaf657fafb3c6db8c787a865434290b726653c912085fbd371e9b92e1c/charset-normalizer-2.0.12.tar.gz"
    sha256 "2857e29ff0d34db842cd7ca3230549d1a697f96ee6d3fb071cfa6c7393832597"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/42/e1/4cb2d3a2416bcd871ac93f12b5616f7755a6800bccae05e5a99d3673eb69/click-8.1.2.tar.gz"
    sha256 "479707fe14d9ec9a0757618b7a100a0ae4c4e236fac5b7f80ca68028141a1a72"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "coreapi" do
    url "https://files.pythonhosted.org/packages/ca/f2/5fc0d91a0c40b477b016c0f77d9d419ba25fc47cc11a96c825875ddce5a6/coreapi-2.3.3.tar.gz"
    sha256 "46145fcc1f7017c076a2ef684969b641d18a2991051fddec9458ad3f78ffc1cb"
  end

  resource "coreschema" do
    url "https://files.pythonhosted.org/packages/93/08/1d105a70104e078718421e6c555b8b293259e7fc92f7e9a04869947f198f/coreschema-0.0.4.tar.gz"
    sha256 "9503506007d482ab0867ba14724b93c18a33b22b6d19fb419ef2d239dd4a1607"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/10/a7/51953e73828deef2b58ba1604de9167843ee9cd4185d8aaffcb45dd1932d/cryptography-36.0.2.tar.gz"
    sha256 "70f8f4f7bb2ac9f340655cbac89d68c527af5bb4387522a8413e841e3e6628c9"
  end

  resource "Deprecated" do
    url "https://files.pythonhosted.org/packages/c8/d1/e412abc2a358a6b9334250629565fe12697ca1cdee4826239eddf944ddd0/Deprecated-1.2.13.tar.gz"
    sha256 "43ac5335da90c31c24ba028af536a91d41d53f9e6901ddb021bcc572ce44e38d"
  end

  resource "Django" do
    url "https://files.pythonhosted.org/packages/7a/59/b774fbaf743e675e9a808406a39814effb723c7c0b1d4a5b3b2e794ce077/Django-3.1.14.tar.gz"
    sha256 "72a4a5a136a214c39cf016ccdd6b69e2aa08c7479c66d93f3a9b5e4bb9d8a347"
  end

  resource "django-annoying" do
    url "https://files.pythonhosted.org/packages/c7/1a/253fb9c0779de1b6ae631c8c4f50aa8187518d5e87a7ca87a0ad1ccf3d9f/django-annoying-0.10.6.tar.gz"
    sha256 "083b5e26f140f86178fcb47931f69b7ff75181ccd1e318d9c218ae9babc1805e"
  end

  resource "django-cors-headers" do
    url "https://files.pythonhosted.org/packages/08/fc/f8201ae834006f6666ec91cfc534aff4d6ac006c92ceabc267b10df2d430/django-cors-headers-3.6.0.tar.gz"
    sha256 "5665fc1b1aabf1b678885cf6f8f8bd7da36ef0a978375e767d491b48d3055d8f"
  end

  resource "django-debug-toolbar" do
    url "https://files.pythonhosted.org/packages/6e/60/25b22fda2f95d01f3936b86f7897871af6bc1dd20adb104e76c55b97a9e7/django-debug-toolbar-3.2.1.tar.gz"
    sha256 "a5ff2a54f24bf88286f9872836081078f4baa843dc3735ee88524e89f8821e33"
  end

  resource "django-extensions" do
    url "https://files.pythonhosted.org/packages/16/e0/ce1ea1bbb90c0c9e9dba12d3d666ed5defd7efee9c229a521207465da8a6/django-extensions-3.1.0.tar.gz"
    sha256 "7cd002495ff0a0e5eb6cdd6be759600905b4e4079232ea27618fc46bdd853651"
  end

  resource "django-filter" do
    url "https://files.pythonhosted.org/packages/7b/cf/adae3e55995ea27e1dceb493e0226557d4207d8819ddb99591df5204a471/django-filter-2.4.0.tar.gz"
    sha256 "84e9d5bb93f237e451db814ed422a3a625751cbc9968b484ecc74964a8696b06"
  end

  resource "django-model-utils" do
    url "https://files.pythonhosted.org/packages/a5/7c/50b36fb5b1e63888107f0d215cae87197165e47de42b9d4142740547fba4/django-model-utils-4.1.1.tar.gz"
    sha256 "eb5dd05ef7d7ce6bc79cae54ea7c4a221f6f81e2aad7722933aee66489e7264b"
  end

  resource "django-ranged-fileresponse" do
    url "https://files.pythonhosted.org/packages/4e/ff/16d0491fc0d4afe4b1e158d9ebc2077d8efaa9489a4ae62ad0f390e7c986/django-ranged-fileresponse-0.1.2.tar.gz"
    sha256 "afafc1b0bbabfe8457e903e06139f1b18b9a1951a80a37453749b8afd5a63a73"
  end

  resource "django-rest-swagger" do
    url "https://files.pythonhosted.org/packages/89/b3/56348f840201f3760f384d6687cbff440db1df7d4315a007b8d8a37a355a/django-rest-swagger-2.2.0.tar.gz"
    sha256 "48f6aded9937e90ae7cbe9e6c932b9744b8af80cc4e010088b3278c700e0685b"
  end

  resource "django-rq" do
    url "https://files.pythonhosted.org/packages/c7/41/8a722d3a1ba1b42b0196c9decdf333a8763ec076b66e93562b1b352e2db2/django-rq-2.4.1.tar.gz"
    sha256 "f09059ab37403a47c7933bca396fabb7f3058732d132462eade5333bc4bcac5f"
  end

  resource "django-user-agents" do
    url "https://files.pythonhosted.org/packages/37/f2/dd96cc880d7549cc9f67c8b1ad8e6695f9731658fdf8aa476f0bcb9c89c7/django-user_agents-0.4.0.tar.gz"
    sha256 "cda8ae2146cee30e6867a07943f56ecc570b4391d725ab5309901a8b3e4a3514"
  end

  resource "djangorestframework" do
    url "https://files.pythonhosted.org/packages/7e/40/efa7f7b2448194b1065572f34d3e6cadb478c67af62f6893957376d8a9be/djangorestframework-3.13.1.tar.gz"
    sha256 "0c33407ce23acc68eca2a6e46424b008c9c02eceb8cf18581921d0092bc1f2ee"
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

  resource "drf-yasg" do
    url "https://files.pythonhosted.org/packages/fc/23/c69c6504bfb7b8394bc4c64ef61460de416fba43471d3d364112a9834251/drf-yasg-1.20.0.tar.gz"
    sha256 "d50f197c7f02545d0b736df88c6d5cf874f8fea2507ad85ad7de6ae5bf2d9e5a"
  end

  resource "expiringdict" do
    url "https://files.pythonhosted.org/packages/fc/71/f3fe348cb85678c6cce5b96210efa099c2a1994ddfc3f37db5aedf8426de/expiringdict-1.1.4.tar.gz"
    sha256 "9275c3f3aa6cabe394355b6454100eb1cdfe395c6b592c26603a2a0f9e3a0587"
  end

  resource "google-api-core" do
    url "https://files.pythonhosted.org/packages/6f/5d/e2e8f058a1048a723855cfa84e5fbe95bbe2b01e848c34a3b9d7a0f87f10/google-api-core-1.31.5.tar.gz"
    sha256 "85d2074f2c8f9c07e614d7f978767d71ceb7d40647814ef4236d3a0ef671ee75"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/9a/97/bf2edc87092301da1936b0df4d9d60e5f4287b6910b7d8f5cc0ea796d620/google-auth-1.35.0.tar.gz"
    sha256 "b7033be9028c188ee30200b204ea00ed82ea1162e8ac1df4aa6ded19a191d88e"
  end

  resource "google-cloud-appengine-logging" do
    url "https://files.pythonhosted.org/packages/e4/8c/2fad8ae7c1a75ba26639ffe9a780aed3449fc0f95c6bb3c9d661d0188331/google-cloud-appengine-logging-1.1.0.tar.gz"
    sha256 "91fe9b0833f6e1a46293dcc0e483716372c9ff4a95ebe51276c5f0092cb9defd"
  end

  resource "google-cloud-audit-log" do
    url "https://files.pythonhosted.org/packages/cd/4b/c73db638882316efcf652f7f12160fbd5ae8768e8baea79d8c663d5736ed/google-cloud-audit-log-0.2.0.tar.gz"
    sha256 "d0852f525ad65705f9fbff6288be4493e1449a7906fb5e01bd71c8d1e424d1fc"
  end

  resource "google-cloud-core" do
    url "https://files.pythonhosted.org/packages/ae/9e/91c5af8ce7a55bf359d3bd3e31507a091c769c8b59d2951fe4fc14bd9409/google-cloud-core-1.5.0.tar.gz"
    sha256 "1277a015f8eeb014c48f2ec094ed5368358318f1146cf49e8de389962dc19106"
  end

  resource "google-cloud-logging" do
    url "https://files.pythonhosted.org/packages/8f/e4/9145949aae5ca0f5f758986788d67fec1e9082b0a4498e8eeee858b72102/google-cloud-logging-2.7.1.tar.gz"
    sha256 "16a259abe76b2c8d580384b80b2d136f2b924efabd6bf9ec917cc1e408f05ae7"
  end

  resource "google-cloud-storage" do
    url "https://files.pythonhosted.org/packages/13/c3/c01c11b5476c2f0bf9901c44fa6c9b578e8d95e5d0f7bcd9ae11c14c9eed/google-cloud-storage-1.29.0.tar.gz"
    sha256 "15c8ab11d17e3a32c154662bb001c2097515799f3fd4947a10b1fceb7b6e9a1e"
  end

  resource "google-resumable-media" do
    url "https://files.pythonhosted.org/packages/79/70/8d2afddae61b0a0189dbefcdcd024a4030c9c696ca3ea410e43498520ed9/google-resumable-media-0.5.1.tar.gz"
    sha256 "97155236971970382b738921f978a6f86a7b5a0b0311703d991e065d3cb55773"
  end

  resource "googleapis-common-protos" do
    url "https://files.pythonhosted.org/packages/95/3f/a1282d82def57e0c28bab597d25785774a4e64433aac9cc136e65c500da8/googleapis-common-protos-1.52.0.tar.gz"
    sha256 "560716c807117394da12cecb0a54da5a451b5cf9866f1d37e9a5e2329a665351"
  end

  resource "grpc-google-iam-v1" do
    url "https://files.pythonhosted.org/packages/65/19/2060c8faa325fddc09aa67af98ffcb6813f39a0ad805679fa64815362b3a/grpc-google-iam-v1-0.12.3.tar.gz"
    sha256 "0bfb5b56f648f457021a91c0df0db4934b6e0c300bd0f2de2333383fe958aa72"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/c6/45/bc828a65a3a9e66aaf347dfda12e8b126b37e3052894e0815ab3f849bc85/grpcio-1.45.0.tar.gz"
    sha256 "ff2c8b965b0fc25cf281961aa46619c10900543effe3f806ef818231c40aaff3"
  end

  resource "htmlmin" do
    url "https://files.pythonhosted.org/packages/b3/e7/fcd59e12169de19f0131ff2812077f964c6b960e7c09804d30a7bf2ab461/htmlmin-0.1.12.tar.gz"
    sha256 "50c1ef4630374a5d723900096a961cff426dff46b48f34d194a81bbe14eca178"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "inflection" do
    url "https://files.pythonhosted.org/packages/e1/7e/691d061b7329bc8d54edbf0ec22fbfb2afe61facb681f9aaa9bff7a27d04/inflection-0.5.1.tar.gz"
    sha256 "1a29730d366e996aaacffb2f1f1cb9593dc38e2ddd30c91250c6dde09ea9b417"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/db/7a/c0a56c7d56c7fa723988f122fa1f1ccf8c5c4ccc48efad0d214b49e5b1af/isodate-0.6.1.tar.gz"
    sha256 "48c5881de7e8b0a0d648cb024c8062dc84e7b840ed81e864c7614fd3c127bde9"
  end

  resource "itypes" do
    url "https://files.pythonhosted.org/packages/0e/53/764524b3907d0af00523f8794daca181c08ca7cb32ceee25a0754d5e63a5/itypes-1.2.0.tar.gz"
    sha256 "af886f129dea4a2a1e3d36595a2d139589e4dd287f5cab0b40e799ee81570ff1"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/89/e3/b36266381ae7a1310a653bb85f4f3658c462a69634fa9b2fef76252a50ed/Jinja2-3.1.1.tar.gz"
    sha256 "640bed4bb501cbd17194b3cace1dc2126f5b619cf068a726b98192a0fde74ae9"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/92/b9/9e3616e7e00c8165fb25175c53444533bdde05f3e974d45d9fcbbe451ee6/joblib-1.1.0.tar.gz"
    sha256 "4158fcecd13733f8be669be0683b96ebdbbd38d23559f54dca7205aea1bf1e35"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/11/a69e2a3c01b324a77d3a7c0570faa372e8448b666300c4117a516f8b1212/jsonschema-3.2.0.tar.gz"
    sha256 "c8a85b28d377cc7737e46e2d9f2b4f44ee3c0e1deac6bf46ddefc7187d30797a"
  end

  resource "label-studio-converter" do
    url "https://github.com/heartexlabs/label-studio-converter/tarball/temp-brew" # TODO: replace with pythonhosted after heartexlabs/label-studio-converter release
    sha256 "9ec3b0b4abc5ff12e8acc25a483961e465431e6d275bcc986b427b93cc71e1a5"
  end

  resource "label-studio-tools" do
    url "https://github.com/heartexlabs/label-studio-tools/tarball/temp-brew" # TODO: replace with pythonhosted after heartexlabs/label-studio-tools release
    sha256 "46d97454b579274259082482b478eb1aeb9e4ee314eba7694e0322792e175087"
  end

  resource "launchdarkly-server-sdk" do
    url "https://files.pythonhosted.org/packages/7a/44/3fb91b06bd925e89a60d087c396450293f2d30de4fde282229fd5baf98cd/launchdarkly-server-sdk-7.3.0.tar.gz"
    sha256 "9aefa9a5df081c1184582072c46ad546a99eb7e7f47d39f187b17d2d878b2ff6"
  end

  resource "lockfile" do
    url "https://files.pythonhosted.org/packages/17/47/72cb04a58a35ec495f96984dddb48232b551aafb95bde614605b754fe6f7/lockfile-0.12.2.tar.gz"
    sha256 "6aed02de03cba24efabcd600b30540140634fc06cfa603822d508d5361e9f799"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/3b/94/e2b1b3bad91d15526c7e38918795883cee18b93f6785ea8ecf13f8ffa01e/lxml-4.8.0.tar.gz"
    sha256 "f63f62fc60e6228a4ca9abae28228f35e1bd3ce675013d1dfb828688d50c6e23"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/1d/97/2288fe498044284f39ab8950703e88abbac2abbdf65524d576157af70556/MarkupSafe-2.1.1.tar.gz"
    sha256 "7f91197cc9e48f989d12e4e6fbc46495c446636dfc81b9ccf50bb0ec74b91d4b"
  end

  resource "msrest" do
    url "https://files.pythonhosted.org/packages/bb/2c/e8ac4f491efd412d097d42c9eaf79bcaad698ba17ab6572fd756eb6bd8f8/msrest-0.6.21.tar.gz"
    sha256 "72661bc7bedc2dc2040e8f170b6e9ef226ee6d3892e01affd4d26b06474d68d8"
  end

  resource "nltk" do
    url "https://files.pythonhosted.org/packages/62/8c/066d49386d048e9e8b580f4aff143b45ceddbf25ce429ea68f9c6ae54308/nltk-3.6.7.zip"
    sha256 "51bf1aef5304740a708be7c8e683f7798f03dc5c7a7e7feb758be9e95f4585e3"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/64/4a/b008d1f8a7b9f5206ecf70a53f84e654707e7616a771d84c05151a4713e9/numpy-1.22.3.zip"
    sha256 "dbc7601a3b7472d559dc7b933b18b4b66f9aa7452c120e87dfb33d02008c8a18"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/6e/7e/a43cec8b2df28b6494a865324f0ac4be213cb2edcf1e2a717547a93279b0/oauthlib-3.2.0.tar.gz"
    sha256 "23a8208d75b902797ea29fd31fa80a15ed9dc2c6c16fe73f5d346f83f6fa27a2"
  end

  resource "openapi-codec" do
    url "https://files.pythonhosted.org/packages/78/e5/e0b5aba60c645dde952bc8a9df1f2b0bef27302908839b0a29284c9245d4/openapi-codec-1.3.2.tar.gz"
    sha256 "1bce63289edf53c601ea3683120641407ff6b708803b8954c8a876fe778d2145"
  end

  resource "ordered-set" do
    url "https://files.pythonhosted.org/packages/f5/ab/8252360bfe965bba31ec05112b3067bd129ce4800d89e0b85613bc6044f6/ordered-set-4.0.2.tar.gz"
    sha256 "ba93b2df055bca202116ec44b9bead3df33ea63a7d5827ff8e16738b97f33a95"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar.gz"
    sha256 "dd47c42927d89ab911e606518907cc2d3a1f38bbd026385970643f9c5b8ecfeb"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/99/f0/f99700ef327e51d291efdf4a6de29e685c4d198cbf8531541fc84d169e0e/pandas-1.3.5.tar.gz"
    sha256 "1e4285f5de1012de20ca46b188ccf33521bff61ba5c5ebd78b4fb28e5416a9f1"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/03/a3/f61a9a7ff7969cdef2a6e0383a346eb327495d20d25a2de5a088dbb543a6/Pillow-9.0.1.tar.gz"
    sha256 "6c8bc8238a7dfdaf7a75f5ec5a663f4173f8c367e5a39f87e720495e1eed75fa"
  end

  resource "proto-plus" do
    url "https://files.pythonhosted.org/packages/05/4b/21303f34881dea586d9f99a4bbe9dd712b31163ee269803cd5b373b9c793/proto-plus-1.20.3.tar.gz"
    sha256 "f28b225bc9e6c14e206fb7f8e996a46fb2ccd902648e512d496abb6a716a4ae5"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/6d/3e/40c56d21154a1f3ababb69f675333d7fb70c8293f9ca42ea3e448327fc50/protobuf-3.20.0.tar.gz"
    sha256 "71b2c3d1cd26ed1ec7c8196834143258b2ad7f444efff26fdc366c6f5e752702"
  end

  resource "psycopg2-binary" do
    url "https://files.pythonhosted.org/packages/14/65/223a5b4146b1d5d5ab66f16ef194916a1ed9720da1f118d7bfb60b8f2bea/psycopg2-binary-2.9.1.tar.gz"
    sha256 "b0221ca5a9837e040ebf61f48899926b5783668b7807419e4adae8175a31f773"
  end

  resource "pyasn1" do
    url "https://files.pythonhosted.org/packages/a4/db/fffec68299e6d7bad3d504147f9094830b704527a7fc098b721d38cc7fa7/pyasn1-0.4.8.tar.gz"
    sha256 "aef77c9fb94a3ac588e87841208bdec464471d9871bd5050a287cc9a475cd0ba"
  end

  resource "pyasn1-modules" do
    url "https://files.pythonhosted.org/packages/88/87/72eb9ccf8a58021c542de2588a867dbefc7556e14b2866d1e40e9e2b587e/pyasn1-modules-0.2.8.tar.gz"
    sha256 "905f84c712230b2c592c19470d3ca8d552de726050d1d1716282a1f6146be65e"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b9/d2/12a808613937a6b98cd50d6467352f01322dc0d8ca9fb5b94441625d6684/pydantic-1.8.2.tar.gz"
    sha256 "26464e57ccaafe72b7ad156fdaa4e9b9ef051f69e175dbbb463283000c05ab7b"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/d6/60/9bed18f43275b34198eb9720d4c1238c68b3755620d20df0afd89424d32b/pyparsing-3.0.7.tar.gz"
    sha256 "18ee9022775d270c55187733956460083db60b37d0d0fb357445f3094eed3eea"
  end

  resource "pyRFC3339" do
    url "https://files.pythonhosted.org/packages/00/52/75ea0ae249ba885c9429e421b4f94bc154df68484847f1ac164287d978d7/pyRFC3339-1.1.tar.gz"
    sha256 "81b8cbe1519cdb79bed04910dd6fa4e181faf8c88dff1e1b987b5f7ab23a5b1a"
  end

  resource "pyrsistent" do
    url "https://files.pythonhosted.org/packages/42/ac/455fdc7294acc4d4154b904e80d964cc9aae75b087bbf486be04df9f2abd/pyrsistent-0.18.1.tar.gz"
    sha256 "d4d61f8b993a7255ba714df3aca52700f8125289f84f704cf80916517c46eb96"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/82/c3/534ddba230bd4fbbd3b7a3d35f3341d014cca213f369a9940925e7e5f691/pytz-2019.3.tar.gz"
    sha256 "b02c06db6cf09c12dd25137e563b31700d3b80fcc4ad23abb7a315f2789819be"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  end

  resource "redis" do
    url "https://files.pythonhosted.org/packages/31/4c/7ee8f6319c26370f636bce7b4ad2ab9d76ed102243c91d853e7e144621d9/redis-4.2.2.tar.gz"
    sha256 "0107dc8e98a4f1d1d4aa00100e044287f77121a1e6d2085545c4b7fa94a7a27f"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/0c/06/8d851419ff870cbe2bf65ecdcfda59d80f11f41157392d794ee544f15bf6/regex-2022.3.15.tar.gz"
    sha256 "0a7b75cc7bb4cc0334380053e4671c560e31272c9d2d5a6c4b8e9ae2c9bd0f82"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz"
    sha256 "68d7c56fd5a8999887728ef304a6d12edc7be74f1cfa47714fc8b414525c9a61"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/95/52/531ef197b426646f26b53815a7d2a67cb7a331ef098bb276db26a68ac49f/requests-oauthlib-1.3.1.tar.gz"
    sha256 "75beac4a47881eeb94d5ea5d6ad31ef88856affe2332b9aafb52c6452ccf0d7a"
  end

  resource "rq" do
    url "https://files.pythonhosted.org/packages/95/bf/672a33db831cfdc5511f987e57074f784364fb5bd08b1da263dc84de9c3b/rq-1.10.0.tar.gz"
    sha256 "be09ec43fae9a75a4d26ea3cd520e5fa3ea2ea8cf481be33e6ec9416f0369cac"
  end

  resource "rsa" do
    url "https://files.pythonhosted.org/packages/8c/ee/4022542e0fed77dd6ddade38e1e4dea3299f873b7fd4e6d78319953b0f83/rsa-4.8.tar.gz"
    sha256 "5c6bd9dc7a543b7fe4304a631f8a8a3b674e2bbfc49c2ae96200cdbe55df6b17"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/46/a9/6ed24832095b692a8cecc323230ce2ec3480015fbfa4b79941bd41b23a3c/ruamel.yaml-0.17.21.tar.gz"
    sha256 "8b7ce697a2f212752a35c1ac414471dc16c424c9573be4926b56ff3f5d23b7af"
  end

  resource "ruamel.yaml.clib" do
    url "https://files.pythonhosted.org/packages/8b/25/08e5ad2431a028d0723ca5540b3af6a32f58f25e83c6dda4d0fcef7288a3/ruamel.yaml.clib-0.2.6.tar.gz"
    sha256 "4ff604ce439abb20794f05613c374759ce10e3595d1867764dd1ae675b85acbd"
  end

  resource "rules" do
    url "https://files.pythonhosted.org/packages/7d/c4/ecfe8e5aaa9fb9e6017bd3c7ebae03c9c54881520f3e6d75d8035bfa9ec6/rules-2.2.tar.gz"
    sha256 "9bae429f9d4f91a375402990da1541f9e093b0ac077221d57124d06eeeca4405"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/66/f5/5ca537483fa5e96fbd455f52a69fc70c5f659f7e8c9189a1dbc211e1ccf9/s3transfer-0.3.7.tar.gz"
    sha256 "35627b86af8ff97e7ac27975fe0a98a312814b46c6333d8a6b889627bcd80994"
  end

  resource "semver" do
    url "https://files.pythonhosted.org/packages/31/a9/b61190916030ee9af83de342e101f192bbb436c59be20a4cb0cdb7256ece/semver-2.13.0.tar.gz"
    sha256 "fa0fe2722ee1c3f57eac478820c3a5ae2f624af8264cbdf9000c980ff7f75e3f"
  end

  resource "sentry-sdk" do
    url "https://files.pythonhosted.org/packages/74/74/82f06055ccbcb05ba84b942346acf39f342fdf3937f2638cb780dac3f125/sentry-sdk-1.5.8.tar.gz"
    sha256 "38fd16a92b5ef94203db3ece10e03bdaa291481dd7e00e77a148aa0302267d47"
  end

  resource "simplejson" do
    url "https://files.pythonhosted.org/packages/7a/47/c7cc3d4ed15f09917838a2fb4e1759eafb6d2f37ebf7043af984d8b36cf7/simplejson-3.17.6.tar.gz"
    sha256 "cf98038d2abf63a1ada5730e91e84c642ba6c225b0198c3684151b1f80c5f8a6"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/32/fe/8a8575debfd924c8160295686a7ea661107fc34d831429cce212b6442edb/sqlparse-0.4.2.tar.gz"
    sha256 "0c00730c74263a94e5a9919ade150dfc3b19c574389985446148402998287dae"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/98/2a/838de32e09bd511cf69fe4ae13ffc748ac143449bfc24bb3fd172d53a84f/tqdm-4.64.0.tar.gz"
    sha256 "40be55d30e200777a307a7585aee69e4eabb46b4ec6a4b4a5f2d9f11e7d5408d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/b1/5a/8b5fbb891ef3f81fc923bf3cb4a578c0abf9471eb50ce0f51c74212182ab/typing_extensions-4.1.1.tar.gz"
    sha256 "1a9462dcc3347a79b1f1c0271fbe79e844580bb598bafa1ed208b94da3cdcd42"
  end

  resource "ua-parser" do
    url "https://files.pythonhosted.org/packages/92/68/b5c60fc7386d95de9d66a42b9a9d4898d74de895368964b198003042e297/ua-parser-0.10.0.tar.gz"
    sha256 "47b1782ed130d890018d983fac37c2a80799d9e0b9c532e734c67cf70f185033"
  end

  resource "ujson" do
    url "https://files.pythonhosted.org/packages/e4/fc/2dee0e78162aa1ad03dadde9a9b5c281d6f8bb0eed6810a270486d8fc041/ujson-5.2.0.tar.gz"
    sha256 "163191b88842d874e081707d35de2e205e0e396e70fd068d1038879bca8b17ad"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/d2/5a/4742fdba39cd02a56226815abfa72fe0aa81c33bed16ed045647d6000eba/uritemplate-4.1.1.tar.gz"
    sha256 "4346edfc5c3b79f694bccd6d6099a322bbeb628dbf2cd86eea55a456ce5124f0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/1b/a5/4eab74853625505725cefdf168f48661b2cd04e7843ab836f3f63abf81da/urllib3-1.26.9.tar.gz"
    sha256 "aabaf16477806a5e1dd19aa41f8c2b7950dd3c746362d7e3223dbe6de6ac448e"
  end

  resource "user-agents" do
    url "https://files.pythonhosted.org/packages/e3/e1/63c5bfb485a945010c8cbc7a52f85573561737648d36b30394248730a7bc/user-agents-2.2.0.tar.gz"
    sha256 "d36d25178db65308d1458c5fa4ab39c9b2619377010130329f3955e7626ead26"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/c0/6c/9f840c2e55b67b90745af06a540964b73589256cb10cc10057c87ac78fc2/wheel-0.37.1.tar.gz"
    sha256 "e9a504e793efbca1b8e0e9cb979a249cf4a0a7b5b8c9e8b65a5e39d49529c1c4"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/c7/b4/3a937c7f8ee4751b38274c8542e02f42ebf3e080f1344c4a2aff6416630e/wrapt-1.14.0.tar.gz"
    sha256 "8323a43bd9c91f62bb7d4be74cc9ff10090e7ef820e27bfe8815c57e68261311"
  end

  resource "xmljson" do
    url "https://files.pythonhosted.org/packages/96/28/55c9f1e9ec5cb5a7c9551d35fc3ba23b4a1b753ab50b35e361da2a022fd2/xmljson-0.2.0.tar.gz"
    sha256 "9a0d3e658093c93af70bea4ddfaf15012e1a7d583c84f9c7ede0aadad0fe14e7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end