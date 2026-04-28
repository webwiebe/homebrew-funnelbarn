class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.7.tar.gz"
      sha256 "c82eaf66c63f4f61f4b1851b04ed0f4e8d2ee0cc9fc6363a99afbfb19f3bbfeb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.7.tar.gz"
      sha256 "ee81610a1b080c03fd1555e458888f68d0b3ebe95daf9b8bfec491c596fcee03"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
