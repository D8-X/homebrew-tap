class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.30/d8x-macos-arm64.tar.gz"
      sha256 "367502462136b672ffc90a4a157ac2edee2f1ca0e81f3377c0e393c029aa3b8c"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.30/d8x-macos-amd64.tar.gz"
      sha256 "345d939226f916003eb3c60b44a3254b0282563b5278132ff5b4abb826232dc1"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.30/d8x-linux-amd64.tar.gz"
    sha256 "80e91419d6523cfd8b9bb12871ef8658890a43939fc25e5908f79b6b43f9d98e"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
