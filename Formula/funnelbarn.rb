class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.2.tar.gz"
      sha256 "6275f09a255556b9e8ee40f06a9b584e3de5d1c5f5ebd21ddc9f519b8b37b1ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.2.tar.gz"
      sha256 "7da494620401f5beab3b8db6e23d5a512e9fa2c0b11a2c17ee904c22004874b5"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
