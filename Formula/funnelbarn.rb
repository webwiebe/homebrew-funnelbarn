class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.60.tar.gz"
      sha256 "8aacbdc0750ab6184f609df4700965c1d3990b68ae4e61067ac733040b44fc9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.60.tar.gz"
      sha256 "bb7ae84847abed7c2a569bb99e9f8389d07c826d194688d6cd71b7bc80a26eec"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
