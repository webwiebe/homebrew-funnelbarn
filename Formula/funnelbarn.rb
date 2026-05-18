class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.12.tar.gz"
      sha256 "77aa05f6aa30ae9298625e351aea5acd84a75df3267404cb9b29ae72d6e7b9a7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.12.tar.gz"
      sha256 "2a559a9627e459cca1a7e7b816bb613111adffc72061d9ea0ae83c71119bf80d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
