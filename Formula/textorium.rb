class Textorium < Formula
  desc "Fast terminal interface for static site generators"
  homepage "https://textorium.app"
  version "1.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.1.0/textorium-v1.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "b1e0f7180208175e2188c64553decd34294df8db5ef60e2206096b2f9ca91c6f"
  end

  on_intel do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.1.0/textorium-v1.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "a93933974cdde8f285e047f50a9729ff33facc8378c07103bd05969f466ffdff"
  end

  def install
    bin.install "textorium"
  end

  test do
    assert_match "textorium 1.1.0", shell_output("#{bin}/textorium --version")
  end
end
