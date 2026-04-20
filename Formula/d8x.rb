class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.21/d8x-macos-arm64.tar.gz"
      sha256 "246f19d20463e887e5cae22475eaa0cc8d0a90095b5e469f44d68beeadde32f8"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.21/d8x-macos-amd64.tar.gz"
      sha256 "670c591d3a92f12c3a8742c356a0abbac1d57bb17ae53f3605d270c7910c6297"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.21/d8x-linux-amd64.tar.gz"
    sha256 "122b15d87daa178cc1c248e6db2a6ec9af3635442cff3501a2b45dbc3f492ebb"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
