class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.129"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.129.tar.gz"
      sha256 "054ea820e11e8f35920e2b82ffee820833c18c1dda9b73029eb2de7919f804cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.129.tar.gz"
      sha256 "2393ac3b1e2275bb4dfb6fdd22a5c31cd5784cf2443dc142020818e4753b5154"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
