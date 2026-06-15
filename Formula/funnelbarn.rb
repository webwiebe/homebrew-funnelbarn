class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.80.tar.gz"
      sha256 "eaa0a4190e4def7b39d1fc32925e9c013f09d81bbfb7fb13b59020a28d34e1af"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.80.tar.gz"
      sha256 "bc21e8f78e6f7086d81ada82a1e2d73b74b121c2f5b156dbed17fa1c101c580a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
