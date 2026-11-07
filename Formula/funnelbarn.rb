class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.180"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.180.tar.gz"
      sha256 "c6bd65032a34e3bb1d97b7c10c5c64c19ac5443f9956a52f727b5f94f71cdb91"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.180.tar.gz"
      sha256 "ff34d655cd3a92b13558c0bab99af435c5a02f70dc347083fbb970ba97384a6a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
