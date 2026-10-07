class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.63.tar.gz"
      sha256 "b44d0f911f8d875df6f0425e068dd267114e3d2c20f8464fa94b7489ca289d99"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.63.tar.gz"
      sha256 "55dd5be028f93f8ec2d8a3fd19709f4e5fb7082a64926715e263bb1070a04e44"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
