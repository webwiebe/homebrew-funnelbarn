class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.123.tar.gz"
      sha256 "dc4d88d269429b14a81bd2b57f56a9b1d2ea32ee50f197785cbb10ed0429c307"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.123.tar.gz"
      sha256 "72d7f27a79bbf0236c9fac880832c5171260ecc238c22b1c6a2e094c264ecc00"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
