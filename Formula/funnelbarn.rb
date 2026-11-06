class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.175"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.175.tar.gz"
      sha256 "6e09e6e7047f605d88f375becd3542d32ed1fd9cc9bff8e2492450b4f14c6aed"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.175.tar.gz"
      sha256 "6dc4a721e4fc5e4b724770032908343f4bceb4846bf6291640c585f73b3399fb"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
