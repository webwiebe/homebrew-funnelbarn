class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.3.1.tar.gz"
      sha256 "faad9b2f106adf06b61700fe4c2176dcb254641c03de537b7caa2ca7b85fb3cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.3.1.tar.gz"
      sha256 "8afb1668f5c0ed23bc3900512f88c778dfcf5306ecb675d04fda991fdf153330"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
