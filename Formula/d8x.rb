class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.19/d8x-macos-arm64.tar.gz"
      sha256 "0e1ffafa33b2941f029ac99a0f48706489af96695d4f57286c8ca3fc7e6c72c2"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.19/d8x-macos-amd64.tar.gz"
      sha256 "a9245c33b3e9fbc367aebe5a40e05cc55f85900dbce49ed991d82161ec67f7df"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.19/d8x-linux-amd64.tar.gz"
    sha256 "211e25770ab00fb3612aa980a6c75d14e3a10e0ab4e34122bda6989078a5ceae"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
