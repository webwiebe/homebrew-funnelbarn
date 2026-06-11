class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.68.tar.gz"
      sha256 "7bc6e756acaa9ac1c5beeaaa84e29d5145dab46b0cb47bde810ce051c517d02d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.68.tar.gz"
      sha256 "71d676dad11a9ba5fdcd0de296fdc2e41d3ded7909754be2254e077b242d452e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
