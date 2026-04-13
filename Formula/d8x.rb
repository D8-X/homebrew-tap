class D8x < Formula
  desc "CLI for provisioning, deploying, and managing D8X trader backend infrastructure"
  homepage "https://github.com/D8-X/d8x-cli"
  version "1.4.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.7/d8x-macos-arm64.tar.gz"
      sha256 "fed7bc12a7eb1223bd0381ad44b9ceda1ea04a236e867cc6dec46456aea38af2"
    else
      url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.7/d8x-macos-amd64.tar.gz"
      sha256 "43453ae978f5ba128f1ff62ee93b81559da9880be179b5df1b60a12eaa9b60ac"
    end
  end

  on_linux do
    url "https://github.com/D8-X/d8x-cli/releases/download/v1.4.7/d8x-linux-amd64.tar.gz"
    sha256 "b398336e3b4737f64aceb5817284ce67010e509e52ef70fd80f5762cf6a1da8f"
  end

  def install
    bin.install "d8x"
  end

  test do
    system "#{bin}/d8x", "--version"
  end
end
