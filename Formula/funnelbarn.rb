class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.184"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.184.tar.gz"
      sha256 "10a376149f946506bef6cf704fe8c4b7cb37c4c380097087b67d73e5d8421e95"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.184.tar.gz"
      sha256 "52bf23aaec2aea23ad7277732ad16b715fb4966cb3d6e06ece37ee5ce1fca982"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
