class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.58.tar.gz"
      sha256 "0bcde235c9b024b1f05c66236acce9b81fc7fb8a96e6567da5c1b4a126afd90b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.58.tar.gz"
      sha256 "af4213b654366b86e737ef13d18c0c1ac628ed1fcb1f56d2fef8ee930a65c15c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
