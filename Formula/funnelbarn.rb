class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.214"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.214.tar.gz"
      sha256 "3ba70dce2179a0b3e70615281484ab3a0c1ef510fa70a42d79178abbf83f63d4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.214.tar.gz"
      sha256 "39eb7feb91d311ef6b4f2c8696e6e1868147ffb47a9ff1d5b81847f994a59606"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
