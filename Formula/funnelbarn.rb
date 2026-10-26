class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.122"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.122.tar.gz"
      sha256 "bb64f2cdfc3ed08db481db2f3d8a13d23853867445f4c00ea9ee0955e4dcdef8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.122.tar.gz"
      sha256 "111607b35c039fb12b29f28566ea5d1699a3488635ee7d14295c3112f6790802"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
