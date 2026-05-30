class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.38.tar.gz"
      sha256 "08effea024c8c4e28fa37cd2088676c5b96e31007ce8ce892f39dbe04688646b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.38.tar.gz"
      sha256 "b53cee93c4cf9092aaad14c88c2b79a33c9db908b464696913bcd5175c6ccd3e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
