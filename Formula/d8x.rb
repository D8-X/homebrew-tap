class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.23/d8x-macos-arm64.tar.gz"
      sha256 "fdf96e71c4bf435d5ac8ff0bcf69894744910957900daad2f3776c6c2028da0f"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.23/d8x-macos-amd64.tar.gz"
      sha256 "934f05ac3b4239f8a95c915f8478bb1379c713f6d2149ee096c344bb6bb488e0"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.23/d8x-linux-amd64.tar.gz"
    sha256 "0a4462e7a20aec684330f9ff6b8d7a90288b901bafd9a30f633a5461ea0e5bd9"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
