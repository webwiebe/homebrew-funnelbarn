class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.240"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.240.tar.gz"
      sha256 "6ccfec75e9bfd4dea0a0df30bdb03bcdf5af00f015034a68063a587f2d5ed40f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.240.tar.gz"
      sha256 "f627d0d3f894052b5bb1e415cf444c6f5008a1700c6e626e1e173f88456cf42c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
