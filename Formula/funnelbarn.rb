class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.45.tar.gz"
      sha256 "45e409cfc8de9002d040eb7d93c48debac042718d595df13b1199f2b88dc0dc5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.45.tar.gz"
      sha256 "647469802456a49af63ca3c00aa543d682bfb8f4b2af45f184b9ab2ceca241c0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
