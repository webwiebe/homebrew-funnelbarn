class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.43.tar.gz"
      sha256 "2c4e067ba81c382b4691a7ab3dcf2acb92c612d596b098f146220be077b47ea5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.43.tar.gz"
      sha256 "59f02fb07fd28215768d94b1fda6fbaf70172cdca298be1c6e9f1e9cbbc57283"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
