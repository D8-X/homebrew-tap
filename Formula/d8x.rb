class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.20/d8x-macos-arm64.tar.gz"
      sha256 "ac3190ed59acd93be93680518efa96a5d209db143cc7baefd440187789cf1382"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.20/d8x-macos-amd64.tar.gz"
      sha256 "e74ae3fdf3e624e71fb9b74fbd553b2e750e6218698a3ffaccfd88f9f245f302"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.20/d8x-linux-amd64.tar.gz"
    sha256 "d843d825119f8c7567d81d059e48c4a059223f7ee8d28bb7764ba784a4f9d40c"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
