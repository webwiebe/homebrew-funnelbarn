class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.125"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.125.tar.gz"
      sha256 "6b81a27ecc531bafc5f54ed75dc4e5414b5910a6e16b338d2184d6dbf6e5911c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.125.tar.gz"
      sha256 "7a927556cc52ed715e287c2f24c999e9a8b4aad392e528f2bdaad0ab62a76c28"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
