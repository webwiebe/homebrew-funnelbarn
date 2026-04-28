class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.8.tar.gz"
      sha256 "a01d2658bfef8da447ca1e411fdd59742030233769adc33a0444115ab06d3ac1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.8.tar.gz"
      sha256 "284192a4ee822e5b5ba1e2aec12192faf0af2b6b0b6310aacbd2ed3dfbec6473"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
