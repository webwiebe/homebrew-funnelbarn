class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.101.tar.gz"
      sha256 "1993441ddd31923286d1051a9bdde8c29a6dd041dbc2ee3667cfa8a375ad9b38"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.101.tar.gz"
      sha256 "d39c6c05532dc57701d36a36050080dad00a43baf31fec3eeb4fc43770b07ea2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
