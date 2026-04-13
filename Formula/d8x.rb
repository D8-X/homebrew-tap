class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.5/d8x-macos-arm64.tar.gz"
      sha256 "6e0d6e619b5fa2e23ed614cf9e550221c5c0780437a50fe66961499236656efc"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.5/d8x-macos-amd64.tar.gz"
      sha256 "812b84d57320db4b06ba733b78a21b6ca82f87c97cd7691f34278301aee8e3d2"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.5/d8x-linux-amd64.tar.gz"
    sha256 "f1fe09f492270cd951053d41d27060f94bb6297df0cfd2f443baaabc034872f3"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
