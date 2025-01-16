class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envvault-0.0.4.tar.gz"
    sha256 "eca25074c3d03da142c9646b2007f255738bb9ed7e9a4af86035ccd77f9aa53a"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envvault"
    end
  
    test do
      assert_match "envvault", shell_output("#{bin}/envvault --version")
    end
  end
