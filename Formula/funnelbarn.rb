class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.265"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.265.tar.gz"
      sha256 "a0f024a52ceb1d530408e65d7af075358a0c565c641653d0b481a18ada4904a9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.265.tar.gz"
      sha256 "93e967d13cbb0520a9a91a0baadf788e5d3e072edbc3fa01b1f0626f316f8987"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
