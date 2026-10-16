class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.96.tar.gz"
      sha256 "bb0caf1be277662363a0fe20ccc28ead274ac1c1e30dcdf323e57a91657b8d82"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.96.tar.gz"
      sha256 "c462be10d0c767f81ad18376e95248ec3ee5c5da6248d80f890be47ac5886835"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
