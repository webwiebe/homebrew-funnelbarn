class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.233"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.233.tar.gz"
      sha256 "a42bc27c15dfc17ec5b61c8665933f9c9971b1202d91d453ecebb96658fbd9a0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.233.tar.gz"
      sha256 "c148001d655933ff59e78efedb6cdbaad237d16c2a5d2ec32b73fee4cf2f3104"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
