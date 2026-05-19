class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.19.tar.gz"
      sha256 "9d477f5b48c02c6b2340afdb4a9d1d9f9dc8248685af6319ef5da5e5b0b2585e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.19.tar.gz"
      sha256 "dde233a4a361f83fdb9f05fdca34692d9a590dedbcc3f1cbf93d2ec528c213f2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
