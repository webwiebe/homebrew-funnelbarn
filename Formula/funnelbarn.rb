class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.20.tar.gz"
      sha256 "4a1fd83773bd98c5ee8c941ee0b8f3d0cca8eae4cfdf365b8abc0efb71bae3c1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.20.tar.gz"
      sha256 "bb4053c0507b459fbcc01510c8dff03ace15b81284fe4cffcda1943af589e887"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
