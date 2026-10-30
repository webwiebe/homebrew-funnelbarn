class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.143.tar.gz"
      sha256 "bc0ebb15d1bc98e545cef57ae967b5b5058c5a9e37d4d80b5a30094b2936ad4a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.143.tar.gz"
      sha256 "160cd73a661c2fd741105edd3a7767d7664812a9b2e4f6424ef599dab5358709"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
