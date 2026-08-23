class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.17.tar.gz"
      sha256 "95a81fc7d0a5e37215cafe3f01fe08907bd0b4e934bb618f4a2b0553c8e4c46a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.17.tar.gz"
      sha256 "b99bc4987a75b0a95ade5de52efdafc713ed0e1369207ba8acdf86c2429a73f1"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
