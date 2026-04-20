class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.22/d8x-macos-arm64.tar.gz"
      sha256 "cb6c85e83f22a52709db0590c9ad257253f8d1f6794cc4790d767eaecea7f25d"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.22/d8x-macos-amd64.tar.gz"
      sha256 "4d773b6e993197cf76117c81533edf94adfa90742a2283e0519416d43bdc951b"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.22/d8x-linux-amd64.tar.gz"
    sha256 "70a1b98ee9c0245993dc6c2b215350fa41df1581b16bd227a48dc7a570b9e8d5"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
