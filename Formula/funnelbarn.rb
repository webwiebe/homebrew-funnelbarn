class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.69"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.69.tar.gz"
      sha256 "9545a1bfea29b7838374e79bda2e3db8afb47130ad702e222c88425a4eb0a3e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.69.tar.gz"
      sha256 "a4ea45f5fa159436dabe8221bdd8add82f094ad11d8789018fc1a2b83b173b67"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
