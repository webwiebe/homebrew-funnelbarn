class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.45.tar.gz"
      sha256 "5fa25579a68cd9149a420aae8436a0af5c2fd6364176b27c7edfabde8293fb85"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.45.tar.gz"
      sha256 "0f4cfa25f64ad4ba2b5a2122e94f742b9f3db0ec355e76cd1946c9bbea344d76"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
