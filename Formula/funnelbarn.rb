class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.44"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.44.tar.gz"
      sha256 "9a011a088702c12c4fc9a68abbb860f88f3a5dd514cf7315f098a9603e5cd719"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.44.tar.gz"
      sha256 "5c0feee14513b4712a5d039f0b870bb8ef6b3a71663879d5e1f64e529995d138"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
