class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.14.tar.gz"
      sha256 "9ecf91099e403bea23b94b50adb3d7f356f4f69d326b0ec3d9885dbf08560ad3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.14.tar.gz"
      sha256 "8b8b1cb4e33f7fc45f6084020aed60c1ac0befc5a215df3470edd3c6c33d82d3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
