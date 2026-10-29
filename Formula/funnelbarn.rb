class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.137.tar.gz"
      sha256 "faadcd8a4497199db31303011d29bf50cfd44136943d8b7ceaeccc2d27c57a7c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.137.tar.gz"
      sha256 "c5ce428c6500d24d7ee2cae1ae97e450b23007a0573b27ed6ae19d474fd7746f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
