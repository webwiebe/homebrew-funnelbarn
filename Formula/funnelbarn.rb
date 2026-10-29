class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.139"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.139.tar.gz"
      sha256 "d02431dfd50a2e5d195164c6f3a06c80682ab94a39fdb34a1ff5b4a55814db90"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.139.tar.gz"
      sha256 "19cbb00dda413c1ab99ec63965dc17a2b627c7c0ffcd8289ab2d6ca76720c372"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
