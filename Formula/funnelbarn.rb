class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.13.tar.gz"
      sha256 "d792d47b08847f0c5e9e1bd614c927c1409f666ade889b230d7bb27a2b6685d8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.13.tar.gz"
      sha256 "cead0313cd9aff8dcc84621c43c9019653ddc0ed99dfd62c668a38cc96cf71cd"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
