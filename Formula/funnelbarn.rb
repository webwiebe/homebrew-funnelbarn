class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.222"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.222.tar.gz"
      sha256 "a2d68d5e8819e48eb8163e149d9b1340959d38c380e0a4c7d0fb22e4c5daddfc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.222.tar.gz"
      sha256 "152efbdaa99329e86fef3a17899aeefd05635a3bad7c2a9c207c0d4cf932ca74"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
