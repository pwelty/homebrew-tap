class Textorium < Formula
  desc "Fast terminal interface for static site generators"
  homepage "https://textorium.app"
  version "1.0.2"
  license "MIT"

  on_arm do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.0.2/textorium-v1.0.2-aarch64-apple-darwin.tar.gz"
    sha256 "5eea0133ddf0db4b6d7dd812a47a6dcc2dbf65d179fc975e50348be98f2562bb"
  end

  on_intel do
    url "https://github.com/pwelty/textorium-tui/releases/download/v1.0.2/textorium-v1.0.2-x86_64-apple-darwin.tar.gz"
    sha256 "01c1924ba30ab01abcfc44627af60690f1cc133221e253f0f0f18244fdf5ae00"
  end

  def install
    bin.install "textorium"
  end

  test do
    assert_match "textorium 1.0.2", shell_output("#{bin}/textorium --version")
  end
end
