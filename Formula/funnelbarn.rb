class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.201"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.201.tar.gz"
      sha256 "75ebb392743656a8f7e94c1e4ec5c90f863f8d733a853c66e0707456acf36066"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.201.tar.gz"
      sha256 "cfb68eccd7dbf73e8cef178c1094feda0ded178099f43f17cdb0e340390dead8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
