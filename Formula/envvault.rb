class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envv-1.0.1.tar.gz"
    sha256 "44f9c2dbd455a858a95b1779b61643db59e496a71baa95de3a68cfc0ebeac820"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envv"
    end
  
    test do
      assert_match "envv", shell_output("#{bin}/envv --version")
    end
  end
