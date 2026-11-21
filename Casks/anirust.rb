cask "anirust" do
  version "1.1.1"
  sha256 "c7524702616b92d4b909e65ed598d35796fb4686c6e54ee188efafca9f5e3ad8"

  url "https://github.com/mrFrok/AniRust/releases/download/v#{version}/anirust-#{version}-macos-arm64.dmg"
  name "AniRust"
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AniRust.app"
end
