class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.11/d8x-macos-arm64.tar.gz"
      sha256 "2a6fb32d3995ea6e817c6b387e9f5299cffb24a94996eccae02c7985932a65c0"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.11/d8x-macos-amd64.tar.gz"
      sha256 "1dde0c1d8e789ae2308c8d0c6e3eb6756ffd86bbe567971e3c7a14cf337bf27b"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.11/d8x-linux-amd64.tar.gz"
    sha256 "d65ace8cc7b9b25e5afb833f847677867dedb778138ae1a7a0886dca1c6e3bd6"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
