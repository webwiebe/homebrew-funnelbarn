class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.68.tar.gz"
      sha256 "14317f6205d470877bce140cbc1bb3bdc83d4c2ad778c3477e09e5bf685259cc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.68.tar.gz"
      sha256 "9ee0ce95a6ecb1a8748e55adc4beb7dcb6b77c6cab75f3c9edaf1a3c3f2a2d38"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
