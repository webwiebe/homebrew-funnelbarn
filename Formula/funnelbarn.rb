class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.48.tar.gz"
      sha256 "0f190d4f543853dbcd22804104ddcfbc41499ac1a631610c12814fa860fd8df1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.48.tar.gz"
      sha256 "8ec1bf7b3cdb5b3e11df1d5a5ced94653c8df277e3f9b044bd309e55ef86cfb2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
