class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.212"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.212.tar.gz"
      sha256 "16f87da59836e22aeca6e2576a7377e3076fe6436dc488d851565a6d652b6b6c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.212.tar.gz"
      sha256 "3f3e688e8490288ce0fe723615759deab1b5ba3e915ff4575f4d7adb781a6191"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
