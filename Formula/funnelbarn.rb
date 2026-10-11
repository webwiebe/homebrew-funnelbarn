class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.81.tar.gz"
      sha256 "7da124d4f4b39f9ee17c45837b23407f95e68d37cecc81a05331c8d1b650f915"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.81.tar.gz"
      sha256 "f19ed39b76c2e756c10b2bebfebe90ad27780716f14bc1b082fb8b21fca772f2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
