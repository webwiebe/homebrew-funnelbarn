class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.51.tar.gz"
      sha256 "ce6b221ad42ac64fbf445383e4724ad903e45c7487b98516aad2ad9ec94085ec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.51.tar.gz"
      sha256 "74faebd9154e8e13d99dcd899a5c7e6fc7f9e3dc31d1e8b453108bf04715f4cc"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
