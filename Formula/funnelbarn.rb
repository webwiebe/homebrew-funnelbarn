class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.40.tar.gz"
      sha256 "c95f296255d0da6ab1295f3e39437c7afa6742664e5fcdd6ab49fa1f9296932d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.40.tar.gz"
      sha256 "47f86ea0ad0457adfdb38dc7c62321514eec858ff5f91146ef531fe5e457da41"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
