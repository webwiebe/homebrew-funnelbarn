class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.92.tar.gz"
      sha256 "ff856a35e3edb4438fd7d2307cca85c9564b94309ebdf14ff0bb6c10644a99d6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.92.tar.gz"
      sha256 "8aa1e156e00307002a8885df6aa0a807b344d08dc7b7d0fc093ad4ffe7937b7f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
