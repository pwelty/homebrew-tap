# frozen_string_literal: true

cask "portico" do
  version "0.1.0"
  sha256 "037c7c8772832b5b874e921508359eaa32fe2c9f1c10d62878ea6f25021f62cf"

  url "https://github.com/pwelty/homebrew-tap/releases/download/portico-v#{version}/Portico-#{version}-arm64.dmg"
  name "Portico"
  desc "SFTP browser with external-editor save-back"
  homepage "https://www.paulwelty.com/apps/portico/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Portico.app"
end
