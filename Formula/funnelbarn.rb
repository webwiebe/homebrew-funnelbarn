class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.78.tar.gz"
      sha256 "b3072af80a3ee9f75fd10794d507bd0adaa0668a02a9f1bf1f18b860b8e48fe8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.78.tar.gz"
      sha256 "01479a1d5417669bdb58dd8134c339e6eb0a3381fc7f5daa1799af2dc0ac33e0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
