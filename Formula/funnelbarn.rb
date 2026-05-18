class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.1.tar.gz"
      sha256 "cb83d1f91846ae57a73f039ca0aef4af8cb39d4444126e4bbb8ea68ef1531d6a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.1.tar.gz"
      sha256 "4f0badb55197a7bba8bfd88df90dfbdc79054d3b78ee81481884ca76c8694a1c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
