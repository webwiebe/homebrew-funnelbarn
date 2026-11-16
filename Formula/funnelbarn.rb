class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.219"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.219.tar.gz"
      sha256 "2d1fbea3efbebf80a0b5147d538c87e6e1c4804625d9c4249e0b2be075b3dcf7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.219.tar.gz"
      sha256 "f9780ba4fa2e6ba5068377340d52c74f334c3a17da76e47a7fbf80f161668f10"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
