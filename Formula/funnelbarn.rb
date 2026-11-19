class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.249"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.249.tar.gz"
      sha256 "b79128522f86b921151ba041e10f670c8df27a632d6be4964686b09fb0badd89"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.249.tar.gz"
      sha256 "ed0e58ee28f369d2a45c8f5cabee9e517ffeb7d2c926ad2d77b111131968c3ae"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
