class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.143"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.143.tar.gz"
      sha256 "ced2b9a1045c607ec930dcbf20e7e2de64a6e74cbefb662b6cdd6e4b67683abb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.143.tar.gz"
      sha256 "97d099b317e754a87d1f88f5c8fcb4684491a6a3299d4545feef923aacbca86a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
