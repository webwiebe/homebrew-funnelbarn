class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.95"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.95.tar.gz"
      sha256 "6708285d9f2b9e57c94e650ae9895173e9db09675aa1b1bf15d88377ea2e1d37"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.95.tar.gz"
      sha256 "7dc50d35ce00ede003cba173f1b2f327c0c939275581d7acc822f2e4a270d3f7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
