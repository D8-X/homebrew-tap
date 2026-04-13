class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.8/d8x-macos-arm64.tar.gz"
      sha256 "62d42f8c40a41be69cf28e708d5e6334ec35ec50245a1eae2f60dec59a24f24e"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.8/d8x-macos-amd64.tar.gz"
      sha256 "873e2681f0d7634dc8ffded0addc285ae21732ff9047d0774002e7bd9477153c"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.8/d8x-linux-amd64.tar.gz"
    sha256 "db6b80d15977849f671f6ada6739bc4f876a9b8d2242d36c2fadd887ad598ba7"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
