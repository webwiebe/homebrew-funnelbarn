class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.150"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.150.tar.gz"
      sha256 "52af70b4b06233ca4172e04e5f50969e57ef2e73a0d237aea69e7624a015c893"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.150.tar.gz"
      sha256 "351f853c769cbdae8a2cd4739aec36936efd242235097bd9a9f4723fa3fdfbf4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
