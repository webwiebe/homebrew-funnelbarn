class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.27.tar.gz"
      sha256 "fbef2fb20756d836be7330d105a90a748dd72a131d255df1bc32884fa49fabb1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.27.tar.gz"
      sha256 "f5309a7ff6f62d23f87a3910b6edbecf07dbe4d5014078945b6191eec17d3f54"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
