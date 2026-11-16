class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.217"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.217.tar.gz"
      sha256 "0379d19ba5717e9dc68b15ed0d8df0ed4570d1be783302a60372d9a78dc1c702"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.217.tar.gz"
      sha256 "5d3eaffcccda20cf5e12b5b103c4dcba0d2eb763dfd919bcbaaf6a4a8a4c00b2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
