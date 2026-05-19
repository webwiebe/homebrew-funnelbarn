class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.20.tar.gz"
      sha256 "7abade2b57829e4f2ff42466f194528611f8eb89e606e19bf9efe48d3d6501b4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.20.tar.gz"
      sha256 "3e5fa41c674dd9574d7b10befd09b19c84da8d69a7f798bb3e33763fd12aeed2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
