class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.82.tar.gz"
      sha256 "4ec12e41877087fab5c107a0f6c11734668f888547e20163b1d6e19d7616809d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.82.tar.gz"
      sha256 "4bd3498f84a95d32e186451f8341b61856e66f4e2aca85cc8c6bf5e55b704a35"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
