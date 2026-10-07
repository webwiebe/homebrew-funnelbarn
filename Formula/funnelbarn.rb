class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.58"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.58.tar.gz"
      sha256 "6843a0cfdb9938692cc4cb25d281fa80e5cead01e5628576dd5e9d1cf1e18185"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.58.tar.gz"
      sha256 "3d5c67557792d120b77a35b9f8836d31c76a2ca6ad63fbe2742c7473b9a8f171"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
