class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.116"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.116.tar.gz"
      sha256 "975f316b177197a933d5ccb52d44103b4ea8505f376f8b3918e75f7d4fe1dc80"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.116.tar.gz"
      sha256 "3386242cb74686ecb7b865cb7ed00724b2842a34a9086d407c13b56a2b88b745"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
