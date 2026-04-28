class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.18.tar.gz"
      sha256 "8589e5c0087e2664c86b6d3ac756a957dcb321efebe41638653c9b9edb6b6efb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.18.tar.gz"
      sha256 "ab5808c8273dd4af34f8119602b26d406eb0ee0e72f31730f3ed17bc8b6cc830"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
