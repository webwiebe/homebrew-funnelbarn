class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.10.tar.gz"
      sha256 "17bcebc093bc898454b0c2a9d5dda466f550e1d68d6227dfae469d170c4a6055"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.10.tar.gz"
      sha256 "854cf9b9a3b45d636dd5e8151a4f97c4cb7f757c60b0cd72b8d2d1a65e31e002"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
