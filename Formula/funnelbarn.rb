class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.90.tar.gz"
      sha256 "8d744f7a60a363446b9beb3e1894b3e34eaf082876300d1a4b159e0b8fe10333"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.90.tar.gz"
      sha256 "7232b3ccf8e0c42de77193d5f68f0be3bcde1fe13889b71d64c40de2030093ad"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
