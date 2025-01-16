class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envvault-0.0.5.tar.gz"
    sha256 "c67f71516970bed72b807bb9c49e07e3bc1b86ecc7a75552ba922e8355d552b1"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envvault"
    end
  
    test do
      assert_match "envvault", shell_output("#{bin}/envvault --version")
    end
  end
