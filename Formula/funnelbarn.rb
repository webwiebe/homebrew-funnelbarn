class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.33.tar.gz"
      sha256 "258754d62a418ddf43a1ae4ffc001b5a72b3865b61979e62365b76df22b888c4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.33.tar.gz"
      sha256 "ff4d5f45f75ef7cde2e5f38f1b65ea9655fdae110dac59c3873396c3dea16ffd"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
