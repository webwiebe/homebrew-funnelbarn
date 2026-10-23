class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.118"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.118.tar.gz"
      sha256 "931f196aed678031ef9c5ba2138df1d2a6cdd861e7514cac49309329695f3cfe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.118.tar.gz"
      sha256 "3d6c3d4ec14a6e60e83a60b6ecd0ef865ab3bbf22faba85b11a1c53f59f0e4e3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
