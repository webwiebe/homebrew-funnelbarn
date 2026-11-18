class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.238"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.238.tar.gz"
      sha256 "d5bf4cac94ea475f58a6ba34178b8c00ac595aecac31de7f4ed7f8e4f55554ee"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.238.tar.gz"
      sha256 "16aa4b6547d1edd735b019a5604d98afdeb8fd196b3b94c071531adbbd7976ce"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
