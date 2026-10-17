class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.100.tar.gz"
      sha256 "95e5ddb8fcb6b2b359c02ff67954e8a3f3577901e0b8be5f014236f62ccec1e8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.100.tar.gz"
      sha256 "94ebb8c1e617fe0d3154d780370fbfe233a0874b7ab8ff3b0c43eb237b1c82d0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
