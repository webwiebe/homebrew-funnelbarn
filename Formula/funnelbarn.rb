class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.64.tar.gz"
      sha256 "9401f532e895bd6794c342465372e1f1f2471ae2ab393a58973ea958adde9bb1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.64.tar.gz"
      sha256 "771cf30d6c728c0d8fca0764addf36fad6b9218a0b3b164d1cf6616cd5ddb9a0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
