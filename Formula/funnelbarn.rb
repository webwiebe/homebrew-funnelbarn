class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.88"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.88.tar.gz"
      sha256 "26c63224fbbd52ed08a214f83a15b5b1499729ff6ae3919ea2390f56a903837e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.88.tar.gz"
      sha256 "fccfe4da8f592e10d4754184198609bdbf597b5ff659c9ccbed708b9c5247350"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
