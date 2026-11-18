class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.239"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.239.tar.gz"
      sha256 "48313d0417507c7f431b0ca71affaa5a5db29f23f36e01fc0439cf0542cddb59"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.239.tar.gz"
      sha256 "55054e8b8a82781c67ec9c53cc507b1b55128b781d355fe3af23793a370ce099"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
