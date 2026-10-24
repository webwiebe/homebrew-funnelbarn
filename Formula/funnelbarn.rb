class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.121"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.121.tar.gz"
      sha256 "4386a0592a593a5260f1a135304072597d03ec4b2dc94192b72d71e3a0e7600c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.121.tar.gz"
      sha256 "9b330fd87e6d53310c29d1561f666fd35b8be1fc5f0b53fdaf63fc9040d33e1f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
