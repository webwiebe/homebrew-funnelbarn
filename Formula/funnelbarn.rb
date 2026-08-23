class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.16.tar.gz"
      sha256 "443d1b051a72e90c2f2a1a8908ab736ca8bcdd5d787da5b5c71165d9d917bc81"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.16.tar.gz"
      sha256 "b28272769fc7a524ccd381b199f0edb38e156be71c3ee34ebd360db059319338"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
