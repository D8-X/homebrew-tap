class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v#{version}/d8x-macos-arm64.tar.gz"
      sha256 "036fafaf8c175756f1d914887f1a44dcd0d7f20e33d9cf79a0351ce23dffa101"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v#{version}/d8x-macos-amd64.tar.gz"
      sha256 "255b1e6e22c6ef71da252cdadf31698d578a5757fe81511efae886466f03f256"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v#{version}/d8x-linux-amd64.tar.gz"
    sha256 "4cd18cc645313504066ed1b64ffbc71681855fdcd8c21ceb7e3f8c35d595f12f"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
