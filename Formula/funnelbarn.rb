class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.215.tar.gz"
      sha256 "360dfe367906ce05ac6d74e7609bb475037fd5f5d8bd9a73e38a4d6046a675f1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.215.tar.gz"
      sha256 "e1895c1642d16c08aaaa9e24482ad6386b10e095d1b1e5a7d610dd43abcd682c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
