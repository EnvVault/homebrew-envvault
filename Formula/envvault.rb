class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envv-1.0.2.tar.gz"
    sha256 "1d7f0caab0ce931aac0c5705674eb981d5c984e6067c57e721397360f6f93617"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envv"
    end
  
    test do
      assert_match "envv", shell_output("#{bin}/envv --version")
    end
  end
