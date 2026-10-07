class Strisk < Formula
  desc "Render a video's per-frame dominant colours as a radial disk PNG"
  homepage "https://github.com/TheFirstIstari/strisk"
  url "https://github.com/TheFirstIstari/strisk/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f672846b358136419927e99af837d7cb7846cb127e56cbbbeb058fc455f5b852"
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
