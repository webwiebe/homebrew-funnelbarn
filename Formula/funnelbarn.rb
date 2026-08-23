class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.11.tar.gz"
      sha256 "fcd62f09b640bfbc411e3ac2352a9994b546ba74295ed020eeef54c3fb44ac7b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.11.tar.gz"
      sha256 "da21c8e16edadc1a692ecaa9ef73c59a2d3c188ddbc7d024089ee576454f0ec8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
