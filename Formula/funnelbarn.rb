class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.84.tar.gz"
      sha256 "6679fce75224e976e814265c0b425a7bfc4e21cbc39c160f18ef7295f2c46de3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.84.tar.gz"
      sha256 "787d86d03ee58d71d8192e53092513b3b8056aebe1cc26199ed808bc8c7005e4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
