class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.192"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.192.tar.gz"
      sha256 "0c9157dc7718646bb8eb6da187d1029e306d55d2626a5f55c1250f1a5c563f8e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.192.tar.gz"
      sha256 "6dfe0b9cfeaac321e27c0ca6885057b6e4ad6019f00b099ac0edd0e6a7598bae"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
