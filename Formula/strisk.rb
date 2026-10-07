class Strisk < Formula
  desc "Render a video's per-frame dominant colours as a radial disk PNG"
  homepage "https://github.com/TheFirstIstari/strisk"
  url "https://github.com/TheFirstIstari/strisk/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "1956f45015c879c4c65d6b7a2edf0f9515b3c396ad24994cd6494433b589ea65"
  license "GPL-3.0-or-later"

  depends_on "ffmpeg"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", *std_cargo_args
  end

  test do
    system bin/"strisk", "--version"
  end
end
