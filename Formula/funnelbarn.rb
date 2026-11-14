class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.207"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.207.tar.gz"
      sha256 "415ab3a14708e632aea272435a3c6bb7ecefc54fcfabdca29f89cbd78a9e8cd5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.207.tar.gz"
      sha256 "de5c4fde51db9b40db8ed0c2a95487d2bfeaed99e012d4b1da974cddf276f26f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
