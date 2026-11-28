cask "anirust" do
  version "1.1.6"
  sha256 "3bd176cbe9d87dcbb132a18a93cdb6269a0a4b5796277508f525331c64613d58"

  url "https://github.com/mrFrok/AniRust/releases/download/v#{version}/anirust-#{version}-macos-arm64.dmg"
  name "AniRust"
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "AniRust.app"
end
