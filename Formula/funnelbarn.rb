class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.146.tar.gz"
      sha256 "591f27159234190b3b182c42f8ac05b698e45500ef7cb8fd3b7ed2c8c618b775"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.146.tar.gz"
      sha256 "2251868537c7d97beb6dc8989845eea2b9d4fd2960b9e2c1a877d972065b0c52"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
