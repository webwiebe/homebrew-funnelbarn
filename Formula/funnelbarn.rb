class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.164"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.164.tar.gz"
      sha256 "132c31357b955bf94ea778f0544148b9be2afcddecfbbda59bcac652d80efa04"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.164.tar.gz"
      sha256 "7041d37d56a292ca6832b68fb5ed9ad8cbf054f031dc28a39343607cace16bb5"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
