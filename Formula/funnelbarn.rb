class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.34.tar.gz"
      sha256 "f119a9abd0f1e6314aa9bb2e74c20e0bf184573ac8e69aeba74eabbb928b7794"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.34.tar.gz"
      sha256 "93abb20509fdb14a01a459aa15509fcd11b2b6ad310eac4b9377dbaa726fa911"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
