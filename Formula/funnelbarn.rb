class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.213"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.213.tar.gz"
      sha256 "529917396a23ed95a35a2f4bd3ab5d80c6cfe8c62087d1c2a8645aa6a94e6d11"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.213.tar.gz"
      sha256 "2c474bed1c708f0120e3af880caaf5e7044313dacd9651e8d3a95b9b43387d36"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
