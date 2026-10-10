class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.80.tar.gz"
      sha256 "84cbd2752f0d3af60ce09704e8881ad6aa97a87c9551fc7c07428f0033d0024d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.80.tar.gz"
      sha256 "dcc1f86c35a161d7001d36dd28299c907b8c9d606e0ad0e7267bf5ca83ed451a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
