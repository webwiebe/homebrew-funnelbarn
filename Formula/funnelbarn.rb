class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.243"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.243.tar.gz"
      sha256 "82215db9048c7d6792280b299d8bf7f98b8e6d228352890b5e28c14e09f0ef3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.243.tar.gz"
      sha256 "0a00c134793416a4fccd1d6553ca197f4a93be16e956d4179677bba0435a4f37"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
