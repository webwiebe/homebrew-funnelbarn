class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.86"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.86.tar.gz"
      sha256 "acbb9722bc458cab044a9ddc0b3e13ed6a6970c9176dd7f9c10ef247de0ab7a8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.86.tar.gz"
      sha256 "1d00ce401355ff716c569230910de1822d7ad4473951677ea21f8afe4d92a540"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
