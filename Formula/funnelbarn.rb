class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.17.tar.gz"
      sha256 "9c62f3490abc8df906aba0b7b71dd3fe083deab1a659ac03d5e5649d11e0469e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.17.tar.gz"
      sha256 "2148929b85cbca02eb7b1acd43df72c2a601397c77579db13dd45c8d96f3cc54"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
