class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.75"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.75.tar.gz"
      sha256 "52517e6ed1f954868a466feccb36552ea1e0b6fc2ebdb757e818586818b8365d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.75.tar.gz"
      sha256 "49f54ba25b2f878113ed2fe28ed41e7ee2a9ef15fbf2eef14d9b47a3912a345b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
