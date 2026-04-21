class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.25/d8x-macos-arm64.tar.gz"
      sha256 "2f662b02838ad4484ae7b79b77545bdc25247c9697bc25908bcd6da16f5740b0"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.25/d8x-macos-amd64.tar.gz"
      sha256 "d6bcb0b832d0878361b87ff2a0113bb85a988d76afa7c4691da7a802777211f5"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.25/d8x-linux-amd64.tar.gz"
    sha256 "e37050b73738988f5873ffef827875cc385c681e62e3fea55dc55da416989fe4"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
