class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.253"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.253.tar.gz"
      sha256 "267eab7c960492bf9532c5275aadd15927c79075c312df9682de1ca372fbbe22"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.253.tar.gz"
      sha256 "998ae762923fae7776015e1e61f926b32ce0a2ccfc71c62cc1beaf75ee59f0fc"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
