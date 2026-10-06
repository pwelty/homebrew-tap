class Cursus < Formula
  desc "Terminal mail client with an account-free instructional inbox"
  homepage "https://github.com/pwelty/cursus-downloads"
  url "https://github.com/pwelty/cursus-downloads/releases/download/v0.1.0/cursus-0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "2d66c38981d42947daa983edcfb928a310f20b86a52983633ab66c2d9b8a217e"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "bin/cursus"
    doc.install "INSTALL.txt", "RELEASE-NOTES.txt", "LICENSE-MIT", "LICENSE-APACHE"
    pkgshare.install "THIRD-PARTY-NOTICES.txt", "licenses"
  end

  def caveats
    <<~EOS
      Experimental Apple Silicon preview; tested on macOS 26.5.2 only.
      Run cursus in a terminal to explore the fictional, account-free demo.
      Configuration: $HOME/.config/cursus/config.toml, or absolute
      $XDG_CONFIG_HOME/cursus/config.toml. Uninstall leaves user data intact.
    EOS
  end

  test do
    # No --version interface. Non-TTY launch refuses before provider/store access.
    config_root = testpath/"config"
    config_dir = config_root/"cursus"
    config_dir.mkpath
    config = config_dir/"config.toml"
    config.write "# account-free test\n"
    original = config.read
    ENV["HOME"] = testpath.to_s
    ENV["XDG_CONFIG_HOME"] = config_root.to_s
    ENV["XDG_DATA_HOME"] = (testpath/"data").to_s
    output = shell_output("#{bin}/cursus </dev/null 2>&1", 1)
    assert_match "interactive terminal required", output
    assert_equal original, config.read
  end
end
