class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.35.tar.gz"
      sha256 "1cc54a4015d9c63c745c50f0b9479b95578b9f70a92c7c6f0b5cb90be270f16f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.35.tar.gz"
      sha256 "ee538bb0431327de7b27ea84d7f7e228da9f2ee4fc441ddeb0f4887d19837ee5"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
