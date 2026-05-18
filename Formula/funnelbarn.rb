class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.6.tar.gz"
      sha256 "b7be7ce4fae46055d0bd444adac30301dd3d2b146a9d799b4bf856599cf1d585"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.6.tar.gz"
      sha256 "d7a28e442f1988c4bc03ce71b6613e9c892fb9cf7b88424c7d359a389f7fb007"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
