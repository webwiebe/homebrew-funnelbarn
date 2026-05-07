class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.124"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.124.tar.gz"
      sha256 "436655a4c0346867582fe9821c47bb360741fa40fbd262506ee5bf7fe2b9d389"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.124.tar.gz"
      sha256 "a5bfeeb556b08df11e5727e58045b32b33940fa6cb0b42361eab947aa0cfac48"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
