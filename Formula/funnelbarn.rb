class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.235"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.235.tar.gz"
      sha256 "13f11803e0e61db3afcf1d3e88219a0fae7673cbb1abd9d1cdf75cfae825b527"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.235.tar.gz"
      sha256 "59138bd31ff819d9c322e01e5cfaa7ecd4e84744f4b320847d2032d36c278bd4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
