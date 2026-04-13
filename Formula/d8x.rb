class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.13/d8x-macos-arm64.tar.gz"
      sha256 "8702fe6fdb08da8e46eac5b2f3383ddbc60d94b748d68b1f007149cdacf30530"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.13/d8x-macos-amd64.tar.gz"
      sha256 "0884a1455d6c0335b2b43f86ca2591df6f4a3e434f7c8624382bfdc921d8829c"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.13/d8x-linux-amd64.tar.gz"
    sha256 "fb54e2eb398200e82f5d7a40b8b60f4332382a21c7032f23d9796fd0fc4968e3"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
