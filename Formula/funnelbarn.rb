class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.83.tar.gz"
      sha256 "3bb6d7a5c3e778c00bfe1825b1e1be47da6f6cba88f7ba48df14e08fd6da11b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.83.tar.gz"
      sha256 "52f06f4640e969e95528affc79a6b342636e8fc936db4a32f20c315a7395f4f2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
