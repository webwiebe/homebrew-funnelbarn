class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.2.9.tar.gz"
      sha256 "c82141df4ee96a59da513db54afab31f91e01cf011f55950c1f93fe61dd8e830"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.2.9.tar.gz"
      sha256 "fcaa9b662163771604ee03319953dd09730c10abb3c5de852014f24d6d643d8e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
