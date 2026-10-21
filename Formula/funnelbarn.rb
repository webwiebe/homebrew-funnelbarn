class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.112.tar.gz"
      sha256 "2a7751105ab05a1455e0d518d636d1fa71a43943c63e27a74e725fcad9411ae3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.112.tar.gz"
      sha256 "342faa98a81d418c036ec0ad35eb7b2f447f949a0c89f1c8fef2d23f3c87ab3c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
