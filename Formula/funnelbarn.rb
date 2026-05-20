class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.24.tar.gz"
      sha256 "3b1b1b43b57854d8a849b37d971b411b06a7e74905b7ad88b68c1eee15a2c682"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.24.tar.gz"
      sha256 "03016b8bfce3f55a0495fa3d3d68e0f19dc8cb32a250f071ae9763bdcc7fba17"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
