class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.32.tar.gz"
      sha256 "e34de2a828c60d8c845b62a70e228d24fc8d8c750a1f791590b2e45bf1cbe9b1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.32.tar.gz"
      sha256 "c38f5c98f52d12974ddfabb28c031b718e7459ce1ba9f554e1043f0ae5c80e83"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
