class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.4.6.tar.gz"
      sha256 "3bb34d74dc1958d6375a84a61f244eaadc8fefe213418bf71845388efdd9d2d0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.4.6.tar.gz"
      sha256 "10fa54b668dd862efdf25716557be4ff4da4f148c8a9bc9d39744f36407e726e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
