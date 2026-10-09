class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.72.tar.gz"
      sha256 "add5c78dcd8deef2a50ace5022d4967da0ace3a05f4ca86977d355bcf6797723"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.72.tar.gz"
      sha256 "c7ccc7e0a4bdab9f2dc14845c881fb143a64830a8ac8b47351402dea47c7e01b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
