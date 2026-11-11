class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.195"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.195.tar.gz"
      sha256 "f9e771b41fd5fe5d3ea20f0a1859558ab4432be8e45215f9e8225fd969c5bd84"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.195.tar.gz"
      sha256 "5dd7018d86d086672917b4984f0ec7d10f838cc1a1683babda0f99e5502263fc"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
