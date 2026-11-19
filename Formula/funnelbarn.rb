class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.248"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.248.tar.gz"
      sha256 "4b9d2106469ddd7c0bcb2464aea4c3707a05a1f47df09fbc230c15d3d40c4864"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.248.tar.gz"
      sha256 "f12ed4a7f894791f1bab10c72b0ab3d2e332a52d9a70e54878f8e2f5972c8251"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
