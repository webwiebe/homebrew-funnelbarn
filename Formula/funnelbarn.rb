class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.132.tar.gz"
      sha256 "dcfc357339678d56c4b6b661cdf31a0c7feb219d08e99c1c5025e65d5701c4a3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.132.tar.gz"
      sha256 "5771cce3009eff1dd19a712b5a35e8a2eceafe59613bd19bc2f5aeff06d8178b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
