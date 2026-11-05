class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.160"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.160.tar.gz"
      sha256 "7e22aab3ecc3073c7d3e5e39141bc21083ffefacc9e0d61bcb6ff05f63fb1081"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.160.tar.gz"
      sha256 "7d489c3d429e432dbae90f058146b4fe9081004eb337431e7e05ee5e488d7abf"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
