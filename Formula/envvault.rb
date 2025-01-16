class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envvault-0.0.3.tar.gz"
    sha256 "81f8db7c38035e0a1a92508b896cd77b5dc997d3019b97c4311c6560ad747cd4"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envvault"
    end
  
    test do
      assert_match "envvault", shell_output("#{bin}/envvault --version")
    end
  end
