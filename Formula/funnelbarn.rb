class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.183"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.183.tar.gz"
      sha256 "16420b7497fd96114b0fb13a855aa17e0dbaa4d27cb94a11ab4845d942d98dce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.183.tar.gz"
      sha256 "e4f459fc5f5c9fd120f60e6ac56ef2a2f9d6e544788fe4a9fc29b282b4ea0b89"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
