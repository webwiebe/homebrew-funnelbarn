class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.261"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.261.tar.gz"
      sha256 "60dc3ed561322fb74ce3cfdd0569823cbe91f478c799f883d44e5be12795c8b7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.261.tar.gz"
      sha256 "98096cfe5ff2260008c048d4b7bdb65ed2a3592c89d2fef6e967f296456ff050"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
