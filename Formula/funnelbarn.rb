class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.59.tar.gz"
      sha256 "44b91ab4c748cff2fab2ae1d3ce6b952e20cda0c9a45f566bf3ca0216a6bbfbf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.59.tar.gz"
      sha256 "ea8c0d27bb3230a0526e7fb8aab2c0ab3d9af48589312372f9eeceeac26ffc6a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
