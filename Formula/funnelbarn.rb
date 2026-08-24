class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.18.tar.gz"
      sha256 "a3b1b30b059b0426d4c6886133121aee2baf058ff5ea5ed2ac5d2a919688ceae"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.18.tar.gz"
      sha256 "d18cf4def5461ddc1cd74ed39cef95c99342cac0c460e1fe8878eba533c942c4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
