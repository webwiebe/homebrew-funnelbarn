class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.63.tar.gz"
      sha256 "8d05417e9ce55c73f597e3f3cf2abf57a28dd9c14f0d2a626c4e03d554245914"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.63.tar.gz"
      sha256 "eff3e4549dcc44e16a670dd1958debfeacfa435b25a2ea50fead9e0ff7939af6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
