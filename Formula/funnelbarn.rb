class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.106.tar.gz"
      sha256 "ecdc54abf7a28e98968659865b02dc297489e7ffecbdbbc97fac6aca2be8e2d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.106.tar.gz"
      sha256 "86eb7fc6125dae2a52fa612e378a742b11aa8fcf6bb0a849102d4a7163de5575"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
