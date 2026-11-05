class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.157"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.157.tar.gz"
      sha256 "9b312fb18b93f9e1de06386a2cde9cdb073a7b12f31941c0c7919a27fa37a3a1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.157.tar.gz"
      sha256 "de90d9aad320b2e18bee60c1574e014f7439ab2ef701295008d1fc1c18bf1049"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
