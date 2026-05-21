class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.30.tar.gz"
      sha256 "bdc3ad5f850e85b2fd78b81608516ae533782130a77698419e67ec32543dbaa3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.30.tar.gz"
      sha256 "0372d149b52f834561af1d52d94cbd08fffa93eabf632cc7fbaf83cb259d1c3c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
