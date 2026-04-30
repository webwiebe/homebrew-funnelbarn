class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.81.tar.gz"
      sha256 "be26e80b1db2831302576f0d4646af2620a80e6c08d8851c9ff740d746e6213c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.81.tar.gz"
      sha256 "47b2742a7756addbed76120455c4a5dc6dc618ff66f27fb0a41fe9cdc57d1c33"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
