class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.54.tar.gz"
      sha256 "a0bd7c37f20c95f23db656e8e8d5cce1366df8475c35eba103084cb63cdcbf19"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.54.tar.gz"
      sha256 "bd93c494d15cb63cee55c928970544dee1afa90991db0da29acf5e1192ad1bc8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
