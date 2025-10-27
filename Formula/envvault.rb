class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envv-1.0.1.tar.gz"
    sha256 "c0bbb8926c511adc3e9ca31436e5653dc6a5ca765e9eb89cd742129d03a2dba7"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envv"
    end
  
    test do
      assert_match "envv", shell_output("#{bin}/envv --version")
    end
  end
