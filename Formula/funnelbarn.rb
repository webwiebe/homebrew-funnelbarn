class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.15.tar.gz"
      sha256 "2be263a7f08e9fb81efa34f582bbe74590075c385dbc3ec8212c111cb26c4e5b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.15.tar.gz"
      sha256 "3a37441f7482dd672b6bdf6177cfb17531d21b882af9f42b2a712e06960b79e2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
