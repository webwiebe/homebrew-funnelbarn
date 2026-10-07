class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.62.tar.gz"
      sha256 "794f3ef899c59969a9d004a25e1d2e3211f9131173e27792a267bf8e7b13cfa2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.62.tar.gz"
      sha256 "f843663439beab83f80ba5fe4f8f4f1a7d3d6fd2b7e15b9b71ef8e3ad728a415"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
