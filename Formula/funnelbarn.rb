class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.206"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.206.tar.gz"
      sha256 "82cff16ec6b46270d7c408a77d76540f8aa95dc29953bcb86f7bac7315df7899"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.206.tar.gz"
      sha256 "83cde5e8276727b36b6ee28da142b0ef5a5eaee3dcebce95feafdc85101d0449"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
