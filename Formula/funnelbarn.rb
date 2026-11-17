class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.230"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.230.tar.gz"
      sha256 "74923fd56b744c64f4f5876930adf8d9a17ff175b2e85dd0c1d23cdb007b7595"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.230.tar.gz"
      sha256 "f46e01f54a502e78847593951a974578473ad905a94f13d2f6cd0f1b0deddb6b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
