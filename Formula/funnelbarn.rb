class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.6.tar.gz"
      sha256 "fb0b8b9c3804b341883fd6bf5d10efb0cc62e2b3fb80282ba2c9d8859795c8d6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.6.tar.gz"
      sha256 "3bcaea712c3f8ca29f11fa885e578153481909c2abcf0ee99fa03fad53c23cf3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
