class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.9/d8x-macos-arm64.tar.gz"
      sha256 "36d4e5f8cd1a419b5e802440b602b55cd171a379720be9a3fb70da8b55eec0fa"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.9/d8x-macos-amd64.tar.gz"
      sha256 "216291292ff391dacac031527eee72f2cffff6512145d9858d2857a7e499280f"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.9/d8x-linux-amd64.tar.gz"
    sha256 "91f78e62a96742d33e5de60425a33d485e9cb7f2c643a3817499b4abe308a10e"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
