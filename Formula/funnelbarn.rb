class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.85.tar.gz"
      sha256 "b7798e9d1edaf27ba4d5aa0b3ad2fc326ab6bea88b265ea66eb82035f353e943"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.85.tar.gz"
      sha256 "109bfa74ad4ba75d67644edb15b3a1532656d495ce49df408b87353362bd0acb"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
