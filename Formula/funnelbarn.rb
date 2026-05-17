class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.3.2.tar.gz"
      sha256 "a196d5b52c9b0bcdf9a0a041cbe43c102fd8e93c3135f21a1be9b5f3a4997b9a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.3.2.tar.gz"
      sha256 "880a8874ee845aec6dc6569d831232e910d6bce382a545264674a5ebf7b232d6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
