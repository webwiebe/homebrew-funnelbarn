class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.97.tar.gz"
      sha256 "3847c7b1cc560c78e6583f0b518831a03763e88a330ceb07a17838697885a573"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.97.tar.gz"
      sha256 "f2f8f7b8212a6e429b4174769a2c1f5b533c1b44f489b3eff36cc158d2434d73"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
