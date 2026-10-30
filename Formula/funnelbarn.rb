class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.144"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.144.tar.gz"
      sha256 "a0bed39ee07f231da86dc38018d993ddbbdc3ec193b88df53b2f57365cb380ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.144.tar.gz"
      sha256 "30c3d5b25212d12f922d69dd148d1b202c6e56751e26c76398e37eed8d436780"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
