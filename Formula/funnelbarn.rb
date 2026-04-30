class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.61.tar.gz"
      sha256 "8c9490fed69e18301af0f5f7810a6404f570ed904d823222e4975684c15cc8f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.61.tar.gz"
      sha256 "a458a5e42695c956029238d0be5942ffc09e37a32c7336dc373449480753fea8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
