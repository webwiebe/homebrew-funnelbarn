class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.89.tar.gz"
      sha256 "a42f240175579d2b821053a581a4d7551d28ae5c77bd7b3e14aa45c6c6641416"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.89.tar.gz"
      sha256 "78bffd8ecc3394ff4b0b91d478d666f33968a2a7634190a4ecc5ea7b2e01e96f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
