class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.28.tar.gz"
      sha256 "4fd63382902473d69869b27776b3ba8b8071536065cd6b57722706c5d4a16b09"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.28.tar.gz"
      sha256 "ef9fea3beba9dfac88e0dec6358d7fb03d92201aed028c1f6cb345331ec86f23"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
