class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.185"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.185.tar.gz"
      sha256 "c36863ccce4bb6db34a9b657cd3d457157dcb0e76c3e2dae1b23352fd538f32a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.185.tar.gz"
      sha256 "f6c25ecf6b2b1f350b81205c94a684d845f06c37f6f22b5a77a6373182d56133"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
