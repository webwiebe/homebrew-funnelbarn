class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.208"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.208.tar.gz"
      sha256 "9d385c1c208e2cf7c21625d7f831c4656e6ebe6ff13c9cb6682c4091ca69c60d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.208.tar.gz"
      sha256 "98d1cd8c60df3efdc3c87ffe0bded25aabebb8b7d748641e9fec65b9d9f1ea55"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
