class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.146.tar.gz"
      sha256 "8bf44ef577863df9b055c86125ba8408846d0c2fa2a0d82a5a20cb0515473c18"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.146.tar.gz"
      sha256 "639900c2239dc516806c801e2b77ec1330cbf8fbfec23bb1589ba97f6d3b270a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
