class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.10.tar.gz"
      sha256 "1bfa1d3dde144c0ac05e9a6dc8cb2d5ea2878738944fccb11bf17e4941602d79"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.10.tar.gz"
      sha256 "2a898c3b514d27a43890725b5d25d2bb20bf4edb51d9ebfce6867e80ed1c58cb"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
