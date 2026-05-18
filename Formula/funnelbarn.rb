class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.3.tar.gz"
      sha256 "ad2301d202183dc6d7b4df1aec8b94b76eb21901afbddb49a7668f44f2809345"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.3.tar.gz"
      sha256 "5efdb0600083e6d8a050c7151b71a816c98d40cf0e2d1bf376ed88f146ac9746"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
