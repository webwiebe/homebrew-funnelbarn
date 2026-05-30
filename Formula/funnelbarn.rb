class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.41.tar.gz"
      sha256 "23dad6557c6092aaa1152f7615f557b0a686d55aee1e184c6f5b71ff4fa5d2f8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.41.tar.gz"
      sha256 "e85d0b61576c6414a43aa8c16a3534e1aee2bc8832685eba008f7b3a57c2003b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
