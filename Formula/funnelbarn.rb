class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.114.tar.gz"
      sha256 "8b489afdcad380311d7a68b3e8e0b864853a624d8ef7c185b44c0c266d4d0a55"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.114.tar.gz"
      sha256 "2cc4b2449dbbd2af1e7b81b811134aef87d4edcfd903a836124f05ea87104e83"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
