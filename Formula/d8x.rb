class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.15/d8x-macos-arm64.tar.gz"
      sha256 "5a920aa2dd6bdb1e8cfd6b59c3578d84dd01e0c6e8d9d6a89c49fac28b4825b1"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.15/d8x-macos-amd64.tar.gz"
      sha256 "54ded19714236d2c46a01bc8527f1f1a2ae34645a502505d12cb84d35d8d1980"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.15/d8x-linux-amd64.tar.gz"
    sha256 "75eb5b72044163f5f94ead0ada21dbb6d63c8574887cf5255d5ef74d24d39501"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
