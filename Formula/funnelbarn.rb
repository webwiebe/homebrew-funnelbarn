class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.9.tar.gz"
      sha256 "ec15ec13df42c1907fd7c0766c4f92b1428ea530be5591e6a92a730ff371cbe9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.9.tar.gz"
      sha256 "14f7ee4b11a1de92278db9e0ae44cd8698a5d634b0400e911fafc5fc8856e7a9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
