class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.205"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.205.tar.gz"
      sha256 "49502060e7c0b65fc6904c8ebeaadf35234cecc8546736d05cd3600fc55d5d1f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.205.tar.gz"
      sha256 "60b5b528926df6a8efbe8b4a5b030f0e3e5e42c4905363d949e5dd6fb9ee13f8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
