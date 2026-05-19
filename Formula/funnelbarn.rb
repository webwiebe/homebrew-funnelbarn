class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.22.tar.gz"
      sha256 "092b437821057c61cc95f2bfa9760b002cffb6019ea9fbedbd33cc54e83a21a8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.22.tar.gz"
      sha256 "c165ab99b7ac6c1e24bd75f1887ac95f48e69ae0a28e9735e785b1f74aaaa365"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
