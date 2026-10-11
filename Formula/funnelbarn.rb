class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.82.tar.gz"
      sha256 "b1e8b5b74d3d49fdf8517a11ddd1dbdf1d65d519e054909f7bc3c88ad296b1c2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.82.tar.gz"
      sha256 "65de57cafdcd9e3a6a27674bd05fc5490c5a4129c4460d511e07cd1ef094232f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
