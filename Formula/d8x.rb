class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.16/d8x-macos-arm64.tar.gz"
      sha256 "fb6bad8e5206f0cb9b6edbf5681e161f45dd2f4d2bb4f3e8bd707ccf07c42ae9"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.16/d8x-macos-amd64.tar.gz"
      sha256 "95eea3a0f196a73790e980c260f32a9e5fa3c61251274df17c05d2007b5efe91"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.16/d8x-linux-amd64.tar.gz"
    sha256 "9e097b5d4825756c40a1c1d7d885ba3cc6a40c5986eb0bef684a7a945b82bd9a"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
