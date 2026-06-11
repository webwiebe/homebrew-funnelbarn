class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.67.tar.gz"
      sha256 "ccdf2bc714f34b746a9b10a602651bb5213ee88785fc917fe0341aec5d1a49f6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.67.tar.gz"
      sha256 "9066882cb8ed5f183ca4640e9abad63b7cb05099a1355cd2456da87a0ed2eefa"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
