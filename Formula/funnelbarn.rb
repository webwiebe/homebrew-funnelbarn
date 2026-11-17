class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.226"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.226.tar.gz"
      sha256 "d3caebc4ff06d46b329e23e858787901960be3246458a77fed16f635f3f69744"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.226.tar.gz"
      sha256 "919521b6f480283e2a589812cd1a8ebc34caa8b7fd49eec6b1ac01b298ecf0cb"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
