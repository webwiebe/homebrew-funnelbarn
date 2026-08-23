class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.9.tar.gz"
      sha256 "c9f65d55899a1545f987d69e34460d228c15d48dd8224256575c6b8bd7ef53b3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.9.tar.gz"
      sha256 "9e1feef0a12f4cff8d0c6a9c385a89d5afce4f05dcaa1a70373588360b1e960b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
