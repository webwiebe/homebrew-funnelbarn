class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.98.tar.gz"
      sha256 "edfd0892d37bc1b60b2f09e58ed13dd4b2c0cdda75d055b0bad5a7b0d87d8468"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.98.tar.gz"
      sha256 "f7c21ce8e5f9f8f014cd135fc9c4daf0764fa6b262f3c91f8742c4a43fc7e629"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
