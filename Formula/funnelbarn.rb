class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.171"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.171.tar.gz"
      sha256 "dc5ffe5258269ea45a563d73f56e6bfa8b79d04e2b1067c993358329d892d055"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.171.tar.gz"
      sha256 "618f2b2394b9c4117224cc6f40c91faf08ed127a30b1a1e6d7295ebc7214b6ba"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
