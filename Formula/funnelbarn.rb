class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.46.tar.gz"
      sha256 "5c9ff3653114733d79ef484ca024ab27bd2ae1049eaf1b8d5e3d7d54c63c4576"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.46.tar.gz"
      sha256 "a6d19f0e240d6bf2cd42234c2ac9fb7dfec47d7bceceb4664c3e7dc9808568d3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
