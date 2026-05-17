class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.4.5.tar.gz"
      sha256 "ed79ff67bfe7f493da1831fbc79cbb9618e42893956fb6bb64906c3f3703a736"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.4.5.tar.gz"
      sha256 "ce3daf5283e23632b742a2bf3d79e2835b970f1dfe2e5a470610a0f45219c9e4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
