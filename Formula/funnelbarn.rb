class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.165"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.165.tar.gz"
      sha256 "d1041b319646ca3f6e19617052293cc40c77523e2fee877ec1d7ea1e9e547386"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.165.tar.gz"
      sha256 "e488559ff87fa91ad373f45b1a99c9c420fcc0a2f5cc99089d685f1084f2e983"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
