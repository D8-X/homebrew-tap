class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.28/d8x-macos-arm64.tar.gz"
      sha256 "6afe3375e1bb7632f327843b59b01e0c1bc7065edb78b9c4dc65fb423adc637f"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.28/d8x-macos-amd64.tar.gz"
      sha256 "d0a63eeb604f206c2d8ea3dcc5c521134350638ed8f9a2b4e13693e644085a96"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.28/d8x-linux-amd64.tar.gz"
    sha256 "a1d9fb28f4bf1e07c925b3fdc030c3442eb540b0061cd9e812044b4ea64b1170"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
