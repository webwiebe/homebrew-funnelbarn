class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.3.4.tar.gz"
      sha256 "60b787afc39afe3358fd9fec2d295ca77715f91ed7a0e1be684259e3bc862706"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.3.4.tar.gz"
      sha256 "d5912864d228a40f8dc3668ece8d5fd54332edc5bdac975f065345615a90218d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
