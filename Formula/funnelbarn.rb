class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.26.tar.gz"
      sha256 "df30bc45c4112bb5c8850c1a67fc4cd39fad91b6924876015c07bcc0edf1bb61"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.26.tar.gz"
      sha256 "764aebc9c05b00479da1ecc31e3102a2f534f7db35ea1e511daaedd4dad87075"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
