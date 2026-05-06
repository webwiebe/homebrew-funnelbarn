class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.120"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.120.tar.gz"
      sha256 "98111f5b69fe2de8ecbe1b5679b9a622ef0a0a7a7e7caeae832864ed3cd18db0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.120.tar.gz"
      sha256 "19d7b5cd32883d5a3bbcb459c007ef0429f5609f5d5716320695257c6b0e8f77"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
