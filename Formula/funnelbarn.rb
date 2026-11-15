class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.210"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.210.tar.gz"
      sha256 "a2ce1cfeb0a88ec30d9e3b0329ac10dfab0828134b84e451904f0591baa80747"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.210.tar.gz"
      sha256 "7357b0618137fafd45a49ba7efbc81afdb28dd69614b5d54d187856d79d7a102"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
