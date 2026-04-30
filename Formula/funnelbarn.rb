class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.91.tar.gz"
      sha256 "46c8165e61edac14db3c0a6d5a5d36d41a2847f2dde438e41b171424aa99d0a0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.91.tar.gz"
      sha256 "b80d73c1a1809ef76ac501ea5a24b7b5cd6f3a85d8614c1a3fae98551040f1e0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
