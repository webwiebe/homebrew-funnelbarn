class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.99"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.99.tar.gz"
      sha256 "c40fcc35d65c3adf3129820b40fca799b9dd3f1143b091e6845a37cd2f03e025"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.99.tar.gz"
      sha256 "79d0313e5ed5794c3090d0ac5c4b7b60e8e65e759e6b54999432c60ec2e568e7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
