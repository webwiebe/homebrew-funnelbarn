class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.99"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.99.tar.gz"
      sha256 "28903eba30de69a913ba13e0970c1e4d60a9d360e7493415d1cc8e52e864d68b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.99.tar.gz"
      sha256 "bc5a302f6e763d407d75c911d0c5d947b0cff92939ef07959ecaf6b2a98b170a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
