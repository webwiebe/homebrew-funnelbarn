class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.199"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.199.tar.gz"
      sha256 "cc1949edaef972ef0ad2db149a40ff84bfdc16240a9a0feecaf3db2073e2c4a6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.199.tar.gz"
      sha256 "c7377279d0e7ef17f0efb2ebbf2f5c15dc7f21ce00c19032e1c2a9a4512b9a4a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
