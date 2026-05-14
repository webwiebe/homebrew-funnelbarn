class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.150"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.150.tar.gz"
      sha256 "b3ebf00d84d4a3f0fb11d94e2a2ebe5d3877624b446e4656bb931540fceb9ae9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.150.tar.gz"
      sha256 "ad176fb497ef0a603b067d2dd551c651ceeae814d1f3261f1a227c148f32e2b3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
