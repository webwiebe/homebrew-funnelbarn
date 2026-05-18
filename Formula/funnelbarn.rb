class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.8.tar.gz"
      sha256 "7ebc18f669466677c7e331d3a8b8c2dde027782418cb750fa4730333a418bbf0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.8.tar.gz"
      sha256 "4d64510d8e3b4e57475c2e271996ebe4f054255424ee0b254cf8aaf9b0e631ee"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
