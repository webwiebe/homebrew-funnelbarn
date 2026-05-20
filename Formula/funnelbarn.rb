class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.27.tar.gz"
      sha256 "804f779b4854e70dd76e5dacea835b92172620a9153cd2e144c656125435898a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.27.tar.gz"
      sha256 "82a24ca0fc247e8dd9df8864cb3e44f0c79d54d5853a1ed875f961bcc6db0ac9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
