class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.91.tar.gz"
      sha256 "37af7382a33d8ffb16849fd319a46cb70697a9764cf293e15efbe7b1cef933d3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.91.tar.gz"
      sha256 "a0b635b94487c4cf73af591c2bda87e6a7d3155556c929f28827159c71f3d571"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
