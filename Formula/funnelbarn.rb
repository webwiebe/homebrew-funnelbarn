class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.92.tar.gz"
      sha256 "951e78b2233938b5178d6650be7b0c2081de8cc242113e0c69e8a33b44db0b7a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.92.tar.gz"
      sha256 "2abdba5c28615db0203eac3f9b56560a9f304788ec46b1c702549a8d47b3dee8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
