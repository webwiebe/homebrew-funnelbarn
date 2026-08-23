class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.13.tar.gz"
      sha256 "663422d1a3dc66c7a89307e060c08f7a97f5083fba3d7b89be688d72c4d4629d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.13.tar.gz"
      sha256 "1c4837f72dfaa1308f0ac93ab5165eb93ff5bfbfcd2c6380a08114cdc7582d56"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
