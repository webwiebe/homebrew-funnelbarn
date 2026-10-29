class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.136.tar.gz"
      sha256 "190379901417e6aba3373130aeed2e0c5c79f2d5659e7e5831adf9496a4a14dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.136.tar.gz"
      sha256 "6285cd80f4c33414078a8cf4570ba68e6270fd5ac3937dc8494f2da75a0e6b16"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
