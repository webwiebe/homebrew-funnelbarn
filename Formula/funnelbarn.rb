class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.256"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.256.tar.gz"
      sha256 "dec3c91689efcffe4e5927bdfbfdb03827a5eccff851526ec7dadbd048a3aa5e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.256.tar.gz"
      sha256 "e70a6930ba3739dc167288d347e92a6258d065cc3c4d76ca2a1eb17e639389f6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
