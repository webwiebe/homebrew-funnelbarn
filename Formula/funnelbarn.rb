class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.102.tar.gz"
      sha256 "5b159a9e35b06af6af036b8a8e8e88c8e78200dd17a3bf9936608d714e157951"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.102.tar.gz"
      sha256 "dfeb598b34f3f88d1be8264de1ae501715cb7f6ced67af5b071c1c9ed4f94e00"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
