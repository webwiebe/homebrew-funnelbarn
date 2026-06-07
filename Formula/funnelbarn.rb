class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.51.tar.gz"
      sha256 "aef99effba54c9dc0b6982de622b3bd34074e94e3b777e6fd4f870a71be60653"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.51.tar.gz"
      sha256 "449bfbba0ca16ff1a4df57f727f54abd53933469b34f03ab2e44cb77ecc77b88"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
