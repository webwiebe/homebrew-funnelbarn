class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.32.tar.gz"
      sha256 "ae8a7caccaa6cd6f0edfdece6baee2a6f82b5adbe1bcab7babbc5761ee610a0f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.32.tar.gz"
      sha256 "4a63adf853717853913891ebdffdbed1aed3eef699f34434ca966387b420083c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
