class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.27/d8x-macos-arm64.tar.gz"
      sha256 "c2f94e30362cf10427e46c3ee2b7bcd8613b9e70b140fdc8b8e3ec378d297e26"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.27/d8x-macos-amd64.tar.gz"
      sha256 "e575c76ed0e6827e73782f4d719e926d2dfc16b4dd6f8d9e81c1f4363d2573a2"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.27/d8x-linux-amd64.tar.gz"
    sha256 "3abcc7780bb36ad0e5929cc962bf88482b8d6b0f6b145684ce94ff65ccc328b0"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
