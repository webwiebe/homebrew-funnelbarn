class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.54.tar.gz"
      sha256 "bfda369ba946bb4d9c1875a2d9c3440df4ad3c67d7add3e4c14b74ba9df884d7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.54.tar.gz"
      sha256 "f261acfc3d0d3a87ab316a66d12aae8f7e1012965ac5516b5410e28d539a5b00"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
