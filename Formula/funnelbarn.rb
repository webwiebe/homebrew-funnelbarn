class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.71"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.71.tar.gz"
      sha256 "b888d5cd369f074e9045f7358475a5ac0e98829ad92f0a2cd962e9652869f9be"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.71.tar.gz"
      sha256 "04557ab1d7e6a7bbe384c57ba2839af69dcfb77ffde4118962e6f11e09023ee1"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
