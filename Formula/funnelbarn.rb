class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.96"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.96.tar.gz"
      sha256 "57505e73bcb40bbd9cacf8d9d6684a49fa267c1f48171b8aa8f59b53a2343ba1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.96.tar.gz"
      sha256 "e1b3649e6e67efd3f5deb92f7da261e244af187560e4eeeb2cf5d0be20b8083e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
