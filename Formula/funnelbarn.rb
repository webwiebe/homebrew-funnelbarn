class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.83.tar.gz"
      sha256 "d170432f7698a97eba6bbcc395f62456c4f3f185a3f7225914f424e3201cb889"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.83.tar.gz"
      sha256 "ba0e6982fa009ddfc93d0f83fb55653021270aa8d11057d23672e0e8bf3b3d05"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
