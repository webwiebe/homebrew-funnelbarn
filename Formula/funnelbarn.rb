class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.87"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.87.tar.gz"
      sha256 "868f17e134b8537caaa515ac630d87cbfe3becf4c25f6ddcb9fbaf96f2365711"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.87.tar.gz"
      sha256 "7a252898b0bccac2b9be8feddc95926269728ab5253cd3a2f3025e3105c23bdf"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
