class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.8.tar.gz"
      sha256 "35c81e007b85742c936b51feaa181bc788232c59ab3ecf8215cf6ed0490fb68d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.8.tar.gz"
      sha256 "f3ffca34c872c07c1aef058cd0521d8cb859cf2f15876f03bb5a8c4bb5f9faa5"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
