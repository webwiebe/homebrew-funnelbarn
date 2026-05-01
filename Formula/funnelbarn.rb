class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.106.tar.gz"
      sha256 "3ff48f8aa10877f7c9abba2eb0b04a247260545499a9eddb3898342d169f7632"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.106.tar.gz"
      sha256 "32652bcea7ba0d540f3f79ad14ef0fe3a5b0c147323818c8f7adae6a93b3d219"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
