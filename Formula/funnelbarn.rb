class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.69"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.69.tar.gz"
      sha256 "e8e7f528f2ffdb7d2cccf79dff3674fe75e0963eed3f3605a06f66db42d4c630"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.69.tar.gz"
      sha256 "c51bbd443b77aa1d4cea177f587402f5a6db0b4e4af11c16b552665b69ea50c4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
