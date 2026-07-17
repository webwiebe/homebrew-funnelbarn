class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.6.tar.gz"
      sha256 "a97dc77a521f178eeba68c4d5e22735df855d2d48bfa3927001af4591c0d99cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.6.tar.gz"
      sha256 "ad286538f3d7d39dec5eabd6b3d9cbb1ef64a3db1a31ddf37e9516cf7a229735"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
