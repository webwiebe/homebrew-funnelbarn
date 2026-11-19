class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.245"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.245.tar.gz"
      sha256 "f45afff93e011ff85284dc1154b249acf8db59e451aec7a7d8bbe55f285c8eab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.245.tar.gz"
      sha256 "cb3291b5df19204219935f8bb305bf598bbed6e32e4026a54e18ceef45cad727"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
