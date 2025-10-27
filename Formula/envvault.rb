class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envv-1.0.1.tar.gz"
    sha256 "83b1e1393d30927662eb0c18967ea201c23ebafdae662810761073144dd39c76"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envv"
    end
  
    test do
      assert_match "envv", shell_output("#{bin}/envv --version")
    end
  end
