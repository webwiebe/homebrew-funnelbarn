class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.113"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.113.tar.gz"
      sha256 "78b58270d55f99f4ead4d677bb1144bf08088066e296b750598717aba2f424b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.113.tar.gz"
      sha256 "d2091ebde073b9c399fd86e5a3cb03e4c634a5d10a8b6f2867ea359d045493af"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
