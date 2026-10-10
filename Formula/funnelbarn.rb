class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.76"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.76.tar.gz"
      sha256 "af6aee8347bb2a86953ea0a9b4f190f449516e8c4e59d123953983b95c077d17"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.76.tar.gz"
      sha256 "e40372dfe57fb0e5d1ac7bdb4a3ecff8cec7462b2ff658e30a1cc728311e5354"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
