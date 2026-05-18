class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.5.tar.gz"
      sha256 "63f032e14f27cf913977f75a935a216cbaa54df6f8ed7ead6e2fb5d0f5afe48b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.5.tar.gz"
      sha256 "25ba9b4751bb9328af1c5825d1ed7749c5b766ee6b887a2107ae0c32e2f57e34"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
