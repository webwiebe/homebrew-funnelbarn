class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.60.tar.gz"
      sha256 "e6156a67027117b0e23032f648eb9b894719efb8a6cb6ff321e9d05af91fe5a6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.60.tar.gz"
      sha256 "87c5687c9399783aba8537a3ee9e2b299d4ad94b8d23b8a0a64cf58a3800be1f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
