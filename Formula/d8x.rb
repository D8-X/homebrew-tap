class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.18/d8x-macos-arm64.tar.gz"
      sha256 "2bf848e958ae54794a0011c96ffbc2a6697793e1db12e72cc28527ffebd690bc"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.18/d8x-macos-amd64.tar.gz"
      sha256 "983364dbfbb23138b28afa60f8cd44208b63f2b4aca53b02f21e1bb0c0fcd760"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.18/d8x-linux-amd64.tar.gz"
    sha256 "103e03ac76eb7ed6ecbb7f272620213ac95975e474ce780ef6d15397c4140e32"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
