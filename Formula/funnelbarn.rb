class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.65.tar.gz"
      sha256 "17220c7ca118685821af6afe9e3c648032ae0749930d7670e5600e02e9e65ef1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.65.tar.gz"
      sha256 "4ae53fda8ecb8fe070d367f2450fa27588e77e33364549070bb51bfa6e35226b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
