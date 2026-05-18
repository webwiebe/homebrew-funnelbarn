class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.7.tar.gz"
      sha256 "64cfdf47db60e3227d1c20ca4d0d79869540ef30c88c2d6ec5f019545fbb1e00"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.7.tar.gz"
      sha256 "87c949d47518a8677856eda46bf317e1cc2be9cc671db16f9af91f3ec3f701bb"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
