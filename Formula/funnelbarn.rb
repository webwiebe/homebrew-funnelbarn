class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.74"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.74.tar.gz"
      sha256 "2bdbafea97b01e4c2f7b25f6535871530026db3ccccba8ab3a955fb80f58791b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.74.tar.gz"
      sha256 "c2c9f1e1ff21301e787dbb87a66a57945092de26fec6545a128325a8fad11cf0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
