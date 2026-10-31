class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.155"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.155.tar.gz"
      sha256 "9f5f3b79253640d1a2a0c08f7d594bf0cd4f108fd0f1c77c446d395b852809cc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.155.tar.gz"
      sha256 "76fb6e376a85e37c14bc4a0f346e176e8f3cc67bbad496ff9b28990251679605"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
