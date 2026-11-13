class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.202"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.202.tar.gz"
      sha256 "f6d2f947347a665ee91ecafd049a2affe024b40b78c5085abc7ac643f8761d4c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.202.tar.gz"
      sha256 "8d484b9f018e85a5a776b43bfb2cc2c09b0fc01ac826a4cdf2b6e652365e2248"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
