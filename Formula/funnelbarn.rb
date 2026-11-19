class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.246"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.246.tar.gz"
      sha256 "83a0dc3c3d4937e17711aee4228c260cfc4095148955dd45466b4f864b54e0d8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.246.tar.gz"
      sha256 "e0bdc71aae975f5c065a1d2432abd649bec2a6d097d7fe870f6cbe6dd0f291a9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
