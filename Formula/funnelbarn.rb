class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.23.tar.gz"
      sha256 "a270198f4d46a5380eac93fbcc52a9d160e85ed6a3d2e43cc5c101ee58523c21"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.23.tar.gz"
      sha256 "9ff262473300b23c1d8eeac4e622b012b6c555192f2da8a132aae55b9f0c3294"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
