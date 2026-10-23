class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.115"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.115.tar.gz"
      sha256 "7ddd22167af3ed702e647fac21a2fa67ddc8023cb462ed975951e4e4e5ee2f3a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.115.tar.gz"
      sha256 "ca372d886e6e6c4b9152c240ff9ee02b1031aa3a9f4304062a631e4fba5c9612"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
