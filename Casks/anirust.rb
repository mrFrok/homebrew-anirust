cask "anirust" do
  version "1.1.5"
  sha256 "6b3b8083694dfaf05ac261d5c3831f86f9452a496a04e34bb2a532852d3d6c0c"

  url "https://github.com/mrFrok/AniRust/releases/download/v#{version}/anirust-#{version}-macos-arm64.dmg"
  name "AniRust"
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AniRust.app"
end
