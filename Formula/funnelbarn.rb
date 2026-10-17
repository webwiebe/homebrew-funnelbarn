class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.105.tar.gz"
      sha256 "26cf6263fe88e56a2103872c9c59a62d8d4ac454695c2569a465c5c6e1b58949"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.105.tar.gz"
      sha256 "3baeb5a1faeddc386c9d9c6c39a06d85c7588355b20abb647ba959e079a34524"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
