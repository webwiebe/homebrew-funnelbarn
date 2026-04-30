class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.73"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.73.tar.gz"
      sha256 "33084dbbb214f1373d475a580f2a1c1f5ef8560e82e660030f56bc42109b3ef1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.73.tar.gz"
      sha256 "ef8e1ce36e6ccebc0c4b612ebee5e637337d45dbdc2b7dee26318804f9f1d648"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
