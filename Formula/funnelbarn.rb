class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.66.tar.gz"
      sha256 "fc184d85da8f1bc5a126f946ac10b19c7217a7f20e5cb68e0f21c989f2b96d10"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.66.tar.gz"
      sha256 "4210136a5c89ab62bf4f98dfa8b7a5eb713625868d325f3e4c97b7671c88149f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
