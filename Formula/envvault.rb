class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envv-1.0.4.tar.gz"
    sha256 "2a0c5d499d02c3081c56de8f25548c29ede22c854264eeaadf638a1df451c655"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envv"
    end
  
    test do
      assert_match "envv", shell_output("#{bin}/envv --version")
    end
  end
