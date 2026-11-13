class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.203"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.203.tar.gz"
      sha256 "c85075258bf02de18a953a2a68de992ef073706dc1bc906af48381720703b2fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.203.tar.gz"
      sha256 "e9d96b5497a88a3a1632bfb833b0e9ba49ba5b7133d9d33b135160f6f9850dc0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
