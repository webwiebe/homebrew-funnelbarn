class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.196"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.196.tar.gz"
      sha256 "8d060ad1bdd05e1bea40a680b1c4f370bc95e52da309419fd9c3dfbd9421a27d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.196.tar.gz"
      sha256 "4273094fb917e40becc6b8e2493bfd625eb5df87ca8da770f7a0aecbe3f1b105"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
