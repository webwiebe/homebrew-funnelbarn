class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.72.tar.gz"
      sha256 "fdadefb057aa395f6103cbc32a35b7a116c5ce4da5971468b2bdc22f85f26533"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.72.tar.gz"
      sha256 "4b416aca1ea3abab81fd6f4e0c1bb1289a70ae4a7509a50666c3e94a084c2cd4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
