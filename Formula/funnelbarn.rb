class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.94"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.94.tar.gz"
      sha256 "cb00bd0d58dbcfdda0c8e5ee78048de7fc811b01a5c4c89cb5b7eda7ebbc0bc5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.94.tar.gz"
      sha256 "8a00288890a26e9670b92dc944a5252fd20eda66f32c72e5af7881652058fd20"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
