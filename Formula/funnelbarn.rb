class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.198"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.198.tar.gz"
      sha256 "6d3f38a80f897e04623c4fa81aae12032b4ea9ffde1841203fa587b919b17d02"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.198.tar.gz"
      sha256 "90a86f551d41c76ca38b48f70f25738debb6f5ec5c762a2e4ba7ded23221b043"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
