class Textorium < Formula
  desc "Fast terminal interface for static site generators"
  homepage "https://textorium.app"
  version "1.0.0"
  license "MIT"

  on_arm do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.0.0/textorium-v1.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "f492f243dda8d15623121ffb5014c67acf180937bd1d5c745ca42af7b0082d9c"
  end

  on_intel do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.0.0/textorium-v1.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "b1bf0ed7c3f24c3486228f3d3f7c5b7d0ddb16b4985a0f08936a55d3c24471d7"
  end

  def install
    bin.install "textorium"
  end

  test do
    assert_match "textorium 1.0.0", shell_output("#{bin}/textorium --version")
  end
end
