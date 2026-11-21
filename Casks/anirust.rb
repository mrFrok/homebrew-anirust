cask "anirust" do
  version "1.1.2"
  sha256 "42242ee9fe489a01281eb2c08d402d46584f5c93270db13352ad76c672a1b705"

  url "https://github.com/mrFrok/AniRust/releases/download/v#{version}/anirust-#{version}-macos-arm64.dmg"
  name "AniRust"
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AniRust.app"
end
