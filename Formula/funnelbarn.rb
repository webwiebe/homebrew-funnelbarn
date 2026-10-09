class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.73.tar.gz"
      sha256 "fbf2f0b2dce13e4d794e6bd93f7ba18420e77e05073082aac7bb15166f0c3891"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.73.tar.gz"
      sha256 "1eb7a5d0f31fa333d5b647a77bb74b80ba7d210924f447654dce20789fcc185f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
