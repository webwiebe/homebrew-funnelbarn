class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.244"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.244.tar.gz"
      sha256 "fefec99c362b8aae378d9ab81d9566d0255e4691000f6c6bd4063738bf5826ee"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.244.tar.gz"
      sha256 "9d30c7cfa94cc09110d5bc949ed2d7c9d416c509d0afb49c959aadfbcce3dae2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
