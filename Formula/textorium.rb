class Textorium < Formula
  desc "Fast terminal interface for static site generators"
  homepage "https://textorium.app"
  version "1.0.1"
  license "MIT"

  on_arm do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.0.1/textorium-v1.0.1-aarch64-apple-darwin.tar.gz"
    sha256 "c69a9d03d23f3f0fb1159b787db1006ec0022bb58017a7608c9c21413cbb16ff"
  end

  on_intel do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.0.1/textorium-v1.0.1-x86_64-apple-darwin.tar.gz"
    sha256 "d1f91a8d2ad235e42cb0628513c9f8c3dd85f2c5e0e4f8aff3ee49b95ecd5aba"
  end

  def install
    bin.install "textorium"
  end

  test do
    assert_match "textorium 1.0.1", shell_output("#{bin}/textorium --version")
  end
end
