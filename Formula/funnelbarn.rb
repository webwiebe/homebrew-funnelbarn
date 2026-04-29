class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.46.tar.gz"
      sha256 "3480dd2d337041054d09bf5d83f57388013b817c0df81ef4a8ef24e68e710d69"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.46.tar.gz"
      sha256 "e9e689c1bf01380a2daecf667bcf1183e5e7d4dbf9c8d639bbb985cdb098cd16"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
