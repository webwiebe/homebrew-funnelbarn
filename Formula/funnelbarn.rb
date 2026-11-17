class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.223"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.223.tar.gz"
      sha256 "2059fcb3f42738ae3db06d0cf88aaa6b61b10bea183e12de7555fd6dbaafb5ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.223.tar.gz"
      sha256 "dde626f3bf0a8515f20b3212616821e3acd52a6308563051637a3ad0a9ec6827"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
