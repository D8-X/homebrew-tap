class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.29/d8x-macos-arm64.tar.gz"
      sha256 "311a787ba0f218129f356583b268cb395e3c457381f5a577fe9fbaec40753a39"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.29/d8x-macos-amd64.tar.gz"
      sha256 "80b8201d6724682a884c542a812ad806bb909aba9d2b10b27c5a1d16f40b7e75"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.29/d8x-linux-amd64.tar.gz"
    sha256 "6e7b5b8bfbdac9747d9bd75f590d8c30d5978b09e1fe419ca569a21e43af86e6"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
