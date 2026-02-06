class Textorium < Formula
  desc "Fast terminal interface for static site generators"
  homepage "https://textorium.app"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/pwelty/textorium-tui/releases/download/v0.1.0/textorium-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "27bb4a221bffa2475d12afc2d6e0cf8db1982b84e49a0a07df9dfa9257d4e48f"
  end

  on_intel do
    url "https://github.com/pwelty/textorium-tui/releases/download/v0.1.0/textorium-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "e512cf464bb0d5173e67b7764211461a77a1dfa7b280f056fdf0381ba35ec3a1"
  end

  def install
    bin.install "textorium"
  end

  test do
    assert_match "textorium 0.1.0", shell_output("#{bin}/textorium --version")
  end
end
