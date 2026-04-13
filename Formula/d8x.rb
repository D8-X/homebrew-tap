class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.12/d8x-macos-arm64.tar.gz"
      sha256 "484b2c4932c8ac40c3d2d2727fae0911a785ca855ab7c078270d26b2450a35d9"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.12/d8x-macos-amd64.tar.gz"
      sha256 "e85a8a9431e33da9a414dedc54e84d40d1edf531b0710113ecc2cdc3e5b4b783"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.12/d8x-linux-amd64.tar.gz"
    sha256 "83946fc14883abb7aece6e6dd40353e1fae861485e704e416c58334f24fad648"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
