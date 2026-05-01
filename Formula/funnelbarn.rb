class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.109.tar.gz"
      sha256 "faf745c41b7fc58f22fb627dd36c4d3e5a764e079962a4ba67941bb4de8415ff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.109.tar.gz"
      sha256 "929f26e9d8325fac81d96928fa18fd7aa3415f7ca9d940d8742d9e44f530490e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
