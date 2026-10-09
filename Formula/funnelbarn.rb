class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.75.tar.gz"
      sha256 "1459b9a70faf83c6cc63889407c488916d3d6ba52c4b47f91ccbd80fae7506e2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.75.tar.gz"
      sha256 "96e0f5dfa2c25d29e079dd665e3eb72ae53546f9a75c49dc3f73b0ee7368957a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
