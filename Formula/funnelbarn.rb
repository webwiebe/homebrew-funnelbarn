class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.29.tar.gz"
      sha256 "1f116895b3919aa2f664cf0cf81e855d808b8e767ddd2d57fe3d45148e5e6338"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.29.tar.gz"
      sha256 "696d459d72c87dfc92e5c8f34cd2b91f98519268158f2cabc1ac715c2ab27676"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
