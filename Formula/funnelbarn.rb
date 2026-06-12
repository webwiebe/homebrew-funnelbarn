class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.72.tar.gz"
      sha256 "b68ef6294a179b2d7b64785f2874907a657140d819d98394daa53f4915680fdf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.72.tar.gz"
      sha256 "bbd1bcaeea2bb421a9b8538e67678571f9ca37b1e66b9d11b552c074e51dbd3d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
