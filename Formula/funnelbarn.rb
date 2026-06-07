class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.55.tar.gz"
      sha256 "5c12ea4bcad0d6c7436969c91809e426fe24f2e9c64477d48c18b5c143d34c9b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.55.tar.gz"
      sha256 "816c1a368af1675dfdfb88192e4c8f0edb99d7210b97b44ba611186f14d7fafe"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
