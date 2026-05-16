class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.2.7.tar.gz"
      sha256 "1c9c64301a7249a909f30ef3ad69b06f3d09ba026b5abcdb417087aa1d46233d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.2.7.tar.gz"
      sha256 "14814bfb11a6e44f95728b9667625b56154041b809fdf57d0d87e5fb7c483b1c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
