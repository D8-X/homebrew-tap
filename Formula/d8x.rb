class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.26/d8x-macos-arm64.tar.gz"
      sha256 "5cad6e90fd56a2bb8073d93adf13999b315e6fd4c771269aef1d3fe25115431a"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.26/d8x-macos-amd64.tar.gz"
      sha256 "8989090138699133b23df54aebf0585a71c63fb31c319ed4d2a89fcedfb76a63"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.26/d8x-linux-amd64.tar.gz"
    sha256 "2e6072cd1afdc6ebfe13868258391ec36e82e802c01415840529059a4ea01235"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
