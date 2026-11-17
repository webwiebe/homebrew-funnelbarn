class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.227"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.227.tar.gz"
      sha256 "3908920b0b18e52d2ba754d388949ada17af3a408fc18a0d005d1b52a6be9447"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.227.tar.gz"
      sha256 "e7fa719272b68293bec8da753883d631e9bbabd96b46f909b7ac53dbf730ed28"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
