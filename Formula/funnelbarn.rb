class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.133"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.133.tar.gz"
      sha256 "acadd9c023a3c58355e287a1b9644457ecf20a19bc346f1c74e84aa8bfb79852"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.133.tar.gz"
      sha256 "00bf01d4ec70c050203ba75511908ecdb4762e6bdcca6596d3bb306c43672b44"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
