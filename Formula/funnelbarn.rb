class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.104.tar.gz"
      sha256 "30944324f0ffbf8bc8e5d97485fa1b1d05aea45cb88f687a78207b66443d6f18"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.104.tar.gz"
      sha256 "fdfaea70391b0b2f7681b0805d3ae25d4b697a347955532846ec1df49fa1ba90"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
