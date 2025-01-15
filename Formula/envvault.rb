class Envvault < Formula
    desc "Secure, scalable, and collaborative environment variable management"
    homepage "https://envvault.com/"
    url "https://envvault.com/releases/envvault-0.0.2.tar.gz"
    sha256 "73b7b8eb54d5f7daf6e17d27803de4079e648c05811a577e47528470ac6bbe2f"
    license "MIT"
  
    depends_on "libtool" => :build
  
    def install
      bin.install "envvault"
    end
  
    test do
      assert_match "envvault", shell_output("#{bin}/envvault --version")
    end
  end
