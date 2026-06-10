class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.64.tar.gz"
      sha256 "a2bbd299dd84d5dd228819b928a3a09d12447b9fabedffbb203bd6d82e8c8a64"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.64.tar.gz"
      sha256 "385be7f5977deb717f2e0dcc513519fdc5d7df438165ebf573ee989508aa1e8d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
