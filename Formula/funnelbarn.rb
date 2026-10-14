class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.90.tar.gz"
      sha256 "ef724275cc79a84ca26f61cead6855837623996c9a4ff9cb1992fc0a7c4992b8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.90.tar.gz"
      sha256 "b7bff1ca5d64c963cb55fea94dea58c9d58536bbb7093529b26649673a3d621c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
