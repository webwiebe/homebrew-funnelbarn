class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.232"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.232.tar.gz"
      sha256 "3134253cb00c99d01cdd1b65c4ad85ccdf4efc9c2bcf9e4c09a1ec6bfabef379"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.232.tar.gz"
      sha256 "e7231080c1037060b4eaab1566d07be4bd0e3c9d79092c6febdcf7c2cfedf6d9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
