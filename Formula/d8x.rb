class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.17/d8x-macos-arm64.tar.gz"
      sha256 "10e9525f7f8b6064373ecc547f8e9c5659b605a1f0fefaf513641808f46e11cd"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.17/d8x-macos-amd64.tar.gz"
      sha256 "658441368a59d88fcd6bc0a035acaa9809ce19a740a5eb40b0fc4b91d1354d19"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.17/d8x-linux-amd64.tar.gz"
    sha256 "1befb6709067afa638c60b858d759dea08677eaf5a85fc91c44d65490ec3433f"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
