class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.234"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.234.tar.gz"
      sha256 "8e1e59a02723c9186ad2e27e11efe479a24b0a785c19f2c31f716807af55d18f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.234.tar.gz"
      sha256 "0870a1822c2944e80479eeb1c37dd0abfc5f4b43f605c91a9eb61ab2ddcb2539"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
