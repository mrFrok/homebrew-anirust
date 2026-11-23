cask "anirust" do
  version "1.1.4"
  sha256 "04d28076a1a9f85356a683496a0dfc32b3e5eafbcaf639df3b25f78d3683b05a"

  url "https://github.com/mrFrok/AniRust/releases/download/v#{version}/anirust-#{version}-macos-arm64.dmg"
  name "AniRust"
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AniRust.app"
end
