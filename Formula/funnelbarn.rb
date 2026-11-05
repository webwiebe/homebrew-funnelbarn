class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.167"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.167.tar.gz"
      sha256 "0e8e4bf61e66fbc9966e66ad87ae47d9a5fafd41cd62fe4f43109c8d9b3aa677"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.167.tar.gz"
      sha256 "a0ef85c3c0953aad888ce5cb52ac4bc09e0f6a60888db87c88ee25a48576147a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
