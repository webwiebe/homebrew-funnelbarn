class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.181"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.181.tar.gz"
      sha256 "05b5a94b1e6e5d0a8ea9a0e777b429cf4da46baf299dba929fbd3cd2da492745"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.181.tar.gz"
      sha256 "ba209bf99c456cd391f07644334a539f12b261e15373f47e3bc33b5251961dcf"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
