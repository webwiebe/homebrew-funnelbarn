class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.3.3.tar.gz"
      sha256 "b96c1e65c00c306b4928f76316bfd315de3a319092775b0bc5cb1cc9625789e0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.3.3.tar.gz"
      sha256 "356f73116b0f3f37b2e0dc6fd8283ffb5e136b2ea43827d34be274e17f7ca6b0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
