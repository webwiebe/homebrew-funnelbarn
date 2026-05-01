class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.110.tar.gz"
      sha256 "227df4b33297768fe082b57466aa0ace71e84f076c51f4407885e8aea0d8d012"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.110.tar.gz"
      sha256 "1d899aeb22466af96d8c12bf7e46436c9eed3f2fcc0d772ae554ad27e03d3113"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
