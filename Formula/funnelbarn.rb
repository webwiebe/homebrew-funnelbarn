class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.38.tar.gz"
      sha256 "e6b18896cd003aa9be6394178ecfaf7c8fe91fd57fc25a0ec97a881ffdc7ded5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.38.tar.gz"
      sha256 "47041854c61f56ed8265105ae55ffdbf9b672e965ca056381986758b4e604eb1"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
