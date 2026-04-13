class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.6/d8x-macos-arm64.tar.gz"
      sha256 "2a103743454d8bb8f99f5ce40a0453c22b84ad818a6fb8766eaaadc5cd6c9dc6"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.6/d8x-macos-amd64.tar.gz"
      sha256 "6990992fddbfeb26b96a604b0bfaebd768ea8622a01600cfd7a5b08d2ea24de5"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.6/d8x-linux-amd64.tar.gz"
    sha256 "aaf395f1e8dbd6a63d9471a5d02be494bb0e67bfb1e3998d5b83d44099627e67"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
