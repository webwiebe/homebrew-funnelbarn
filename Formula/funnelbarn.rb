class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.16.tar.gz"
      sha256 "871eba7e0fef86184eed70853e81376eeb58ac25d8859b4525a27d441da1a5c0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.16.tar.gz"
      sha256 "8cc53f70a4ca09bc41f0b985cbc7bfbb9e08e08e70470bd7132f3fc9370db033"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
