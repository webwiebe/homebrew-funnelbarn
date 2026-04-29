class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.40.tar.gz"
      sha256 "6b3035243eb71fb98fbdeb2d67f6a9481e551af8688255965a092d3395af0978"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.40.tar.gz"
      sha256 "bb41909c9bc52e2fecf7e121475da8287f7c099ed2b2aca1ab734eaed4e90763"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
