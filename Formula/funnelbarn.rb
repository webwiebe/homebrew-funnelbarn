class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.142"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.142.tar.gz"
      sha256 "af84bcc467499cfe00a3764e3947fdd0e305685edfd756d80827dc57361fe170"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.142.tar.gz"
      sha256 "d3978c50cb6be9683ffe9112b4826a0578be6f8f7ed52de0707cc46a26ee32eb"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
