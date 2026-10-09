class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.74"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.74.tar.gz"
      sha256 "2089204e9f4d6dfada5389687e04aa5c8b0c75e5e185d7d9a98318e1a387074f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.74.tar.gz"
      sha256 "887d9aeaa2cfdcbf19e9b3e5a65ff0716ecc2bab8cf9f8f7d8850e9c47194e60"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
