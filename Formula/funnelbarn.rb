class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.18.tar.gz"
      sha256 "c63ab7713a54e17b93d935f9708cf6d59a03f6e8b29a5c7018dc2958264045e0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.18.tar.gz"
      sha256 "71d42b3ca0ced9c01178b7948437f8d9026c646f8f9dda947d1b0af464eac3c9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
