class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.194"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.194.tar.gz"
      sha256 "5eded14fd8ff85f6db520d747450db0950495c35fb3001fd7b1cdbbf5cbd6013"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.194.tar.gz"
      sha256 "3c1b29edda76b0664d0715160f51baa471eada92a06cc25f87853ab21dd9dab1"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
