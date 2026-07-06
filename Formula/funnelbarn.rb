class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.91.tar.gz"
      sha256 "87802f8acef6231dfbb2745e783904a46023ed84276bac0ef9ce319ea6db09ff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.91.tar.gz"
      sha256 "8f41f46e42e59ec38953e5211265aac0867cb8a0d030e33f1749432de67d0da9"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
