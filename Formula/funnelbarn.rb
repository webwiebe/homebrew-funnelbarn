class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.3.tar.gz"
      sha256 "a5a39eb71a4f9db9ceb59b838096673cea41eaa4a9a2ba4d6996ae7dcd887d00"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.3.tar.gz"
      sha256 "2557e51177091ab870ff6627cb53ea7aa3bdbcc5d0444470aff1fa2eb7f18f99"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
