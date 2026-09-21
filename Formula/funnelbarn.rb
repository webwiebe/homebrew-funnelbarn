class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.49.tar.gz"
      sha256 "6f7bd3922cbafa1cbce3dcaa0ee8349a63f645bed6cfe208cb82871464c7388e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.49.tar.gz"
      sha256 "962cd354d3d8fb8cc6bd3fb67f27efa241aff993e53b7ae6cdb36ba608cda9a9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
