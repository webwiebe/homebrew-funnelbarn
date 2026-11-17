class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.224"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.224.tar.gz"
      sha256 "f123c5c844e57390d0c76aeabe87964f6c1679f6554d1b4884027ad29c0241d1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.224.tar.gz"
      sha256 "9fefb6afca41839814ae19a2481248f2becdc9836fdd3c5c614f5bab7b41ba51"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
