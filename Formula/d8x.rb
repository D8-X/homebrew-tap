class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.14/d8x-macos-arm64.tar.gz"
      sha256 "d355000d4b6f5000b920f1f7371fcaff13c0ac9835dcdfde55e628120321a095"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.14/d8x-macos-amd64.tar.gz"
      sha256 "16bc506e5043a7615577a8b2f1a5e04c3827fa1bbdd4cde8d8e1258dc88cdce1"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.14/d8x-linux-amd64.tar.gz"
    sha256 "d80cf854150f01d16fbcd47ada492c75e87ebfb5db55c70249f399037b6b55c4"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
