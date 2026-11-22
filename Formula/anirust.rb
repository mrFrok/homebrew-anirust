class Anirust < Formula
  desc "Desktop client for Anixart with an mpv player"
  homepage "https://github.com/mrFrok/AniRust"
  url "https://github.com/mrFrok/AniRust/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "9ea9ab741ad91a3cb377397e76bce59f9a961633f3504c1ed403ce9716b00ce1"
  license "GPL-3.0-or-later"

  depends_on :linux
  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "fontconfig"
  depends_on "libxkbcommon"
  depends_on "mpv"

  def install
    system "cargo", "build", "--release", "--locked", "-p", "anirust-gui", "-p", "anirust-cli"
    libexec.install "target/release/anirust"
    (bin/"anirust").write_env_script libexec/"anirust", ANIRUST_LAUNCHER: opt_bin/"anirust"
    bin.install "target/release/anirust-cli"
    (share/"applications").install "packaging/linux/io.github.mrfrok.AniRust.desktop"
    (share/"icons/hicolor/scalable/apps").install "packaging/icons/anirust.svg" => "io.github.mrfrok.AniRust.svg"
  end

  test do
    assert_match "AniRust #{version}", shell_output("#{bin}/anirust --version")
  end
end
