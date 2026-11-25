class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.260"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.260.tar.gz"
      sha256 "d31707b8dc20bd926238aedb3bdbe13a5e0734ea4b658c2fe65dd43624fdbbd7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.260.tar.gz"
      sha256 "fb9cd44fd5350d810269119b514a5bb6743afe4e4b7713ce2777b96e4be4fd24"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
