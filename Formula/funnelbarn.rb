class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.191"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.191.tar.gz"
      sha256 "1cc738d245b6c7b8046541e123ab80b33cefe02b0ffa569f8ab09fff7eb47344"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.191.tar.gz"
      sha256 "2ee5324c554b31f7ec3330d7d1e66a2f4f658aec1967eb19275ff41db0f7aaa4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
