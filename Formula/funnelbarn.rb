class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.149"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.149.tar.gz"
      sha256 "ccc529330e1cd41d25e4f08b47d89b0da6bec2d34cd790e8f5d595484b491703"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.149.tar.gz"
      sha256 "b534174d808e3b7bd5921447b72cde511dd4aeed3ea73f95de48ed0abe157a05"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
