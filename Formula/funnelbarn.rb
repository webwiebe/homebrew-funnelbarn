class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.95"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.95.tar.gz"
      sha256 "4ed221316c8797ae5dc336f563fdfac7e12dfa7f047f9f820e005ace089327d1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.95.tar.gz"
      sha256 "25c84780f7df7b711a445ddbd3467730bebe790d9bc3d38c1ba4f0de1d98f2d0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
