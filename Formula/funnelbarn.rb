class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.66.tar.gz"
      sha256 "5e7f4015cf4e761a31b1da0fbb996666cc19fe0cd6a7964ff8843e7d9fb2694d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.66.tar.gz"
      sha256 "b57a15458c3374c4d6c73f5db7792ebc88c168508ff51116faa2146d021a217d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
