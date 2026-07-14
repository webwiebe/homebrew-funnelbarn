class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.5.tar.gz"
      sha256 "32b52bd84ae6e3361e6f1a590db1d2ab099b932a31e26012d789e4b0f087d567"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.5.tar.gz"
      sha256 "5fdc479eeddbde268ec1cf11207290c62ac118bf0ff52cbedf08a9158779d2d6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
