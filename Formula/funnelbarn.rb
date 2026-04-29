class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.34.tar.gz"
      sha256 "6e171f273aa36bbbed0b228db2bd887a304107f0aa18e08a6d8ce4f3484f42a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.34.tar.gz"
      sha256 "b0a47d30a13d169e5b3966b2350d74974f5a769e15a7ee21393e2bc12f0e08c7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
