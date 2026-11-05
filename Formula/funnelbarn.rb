class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.163"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.163.tar.gz"
      sha256 "5cefda4ce48cd53f8ed84f9ae9ef13144a0f5c2adc24f72ee8644934f140de58"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.163.tar.gz"
      sha256 "0e4ee37c4d98fcba3f9293aee0ab141aea6e1852b3d6f3662c4fbb711dee274b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
