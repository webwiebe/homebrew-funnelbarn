class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.21.tar.gz"
      sha256 "042b218befc4208b18ec2afcd090995417352a378e8eb5ff517ac243eb1c002b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.21.tar.gz"
      sha256 "2b2d86c1cb3e2bbdce85be192af1adf1a6725eecb64ae9e9846f2ca3f6237f86"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
