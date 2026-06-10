class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.62.tar.gz"
      sha256 "7f8931faa5f1cc64f307359a71b9d1d327b0f4eba555701c6b7413460292039e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.62.tar.gz"
      sha256 "c1905501dbf283ba13d80207d5ca2b78d83d74717e4f3318ed0d4ef578d22c8c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
