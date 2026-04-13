class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.10/d8x-macos-arm64.tar.gz"
      sha256 "349fd5381c2075a2d3247546d077e429439f7d9ff0f5f522bb72ffc812c644e0"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.10/d8x-macos-amd64.tar.gz"
      sha256 "6c50dc0d54f23f04a7a6c2e85352ea8ed178243d70dbd4b5cb8a330f3ffbdefc"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.10/d8x-linux-amd64.tar.gz"
    sha256 "dd191c3c66dc0ef163891fea0ecd45438fbde7b0f2bdf78bade94d9ddc1729ec"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
