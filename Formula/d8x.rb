class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.24/d8x-macos-arm64.tar.gz"
      sha256 "b93ccfd08dfd053916588d9d2139b7e70014a9e069d985bcccf2bbdbb27f9da9"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.24/d8x-macos-amd64.tar.gz"
      sha256 "d0a91a4168c314566e67f57b939c8e6eaf8273dd096aae8bbaa4ea3d7a184dbe"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.24/d8x-linux-amd64.tar.gz"
    sha256 "ee12a14a025f1ce58d21309b365ff2ea7a3bd1395f268ee1c3acd868525a62e1"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
