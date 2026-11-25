class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.259"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.259.tar.gz"
      sha256 "01a68bd191c080ba61d0ae21916ceccdfbe0ec2ec92facc1743b3c64dc765ec7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.259.tar.gz"
      sha256 "7b9f93345abe8b90dfa19c08d57a07a171eeb0751879ae77ae9681ec6fd9c832"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
