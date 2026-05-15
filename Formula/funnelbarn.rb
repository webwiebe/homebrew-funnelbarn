class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.152"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.152.tar.gz"
      sha256 "c8084dafb0b7cbd8fdda0f0d108f0fa1884fce2a6058e6939aee1727ba0b671c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.152.tar.gz"
      sha256 "a825f2635b8346093d2e094868ae7b5b78fd1e1b30b6cd57de95622ae8b45881"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
