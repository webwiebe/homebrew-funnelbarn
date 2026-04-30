class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.84.tar.gz"
      sha256 "ad81d440336585ff47799e347e4c983c6054209ca21d00e7d0dcf1cefcd7ad35"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.84.tar.gz"
      sha256 "5eb068fb2e31e7250a0240be5f9a9990d67fbdd1872dcc276a64547020c41af7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
