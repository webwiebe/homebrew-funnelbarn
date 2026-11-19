class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.252"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.252.tar.gz"
      sha256 "e3612eaf3851ed3457504a09b2cb4002d650f4621a448063b2c4a0dc46659855"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.252.tar.gz"
      sha256 "a563ab475860bd1213b6f811e9a1647e65dccdb885c57ab31dcc49bc14ed90cf"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
