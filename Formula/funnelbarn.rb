class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.79.tar.gz"
      sha256 "7064a92312bcc73a2602e608fadc651dbea89479c00c7d718259e2baa8b39a0b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.79.tar.gz"
      sha256 "246aecb467af320bb96fb14b0cf141008daf721986840a14fa3ddd6b177fb08f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
