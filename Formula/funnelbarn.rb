class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.209"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.209.tar.gz"
      sha256 "2633a71d37837be7c0ce0214309bfd8ad70602d8a32a3c054cfacd8bb8f276ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.209.tar.gz"
      sha256 "4e2eeca1fde684dfbae058763af4bf5c9e95c90fac294075c563c5797a9ab9d7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
