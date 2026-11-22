cask "anirust" do
  version "1.1.3"
  sha256 "161bbe0359d35fce0669f68ee4d548b69ea465f532438861485daf87c9a58252"

  url "https://github.com/mrFrok/AniRust/releases/download/v#{version}/anirust-#{version}-macos-arm64.dmg"
  name "AniRust"
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AniRust.app"
end
