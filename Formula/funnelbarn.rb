class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.101.tar.gz"
      sha256 "87eecdd358dd109d84efd8f78335c5f6c26f8625981b7c2d25bc74e8ce69a8b9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.101.tar.gz"
      sha256 "6de3c621f3985da4353e974b7ab01e969e9795ed1b1943ffe25772d42ae6bef4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
