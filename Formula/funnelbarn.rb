class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.107"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.107.tar.gz"
      sha256 "36b54c8a968f2913b0b571f74f78856e31b696623ba44a93568495cf7528e9bd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.107.tar.gz"
      sha256 "c073247e6c8294dedf01892b025fe8cc1e37e4ad0afdfad131f4a3f63ae476f8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
