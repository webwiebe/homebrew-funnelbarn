class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.229"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.229.tar.gz"
      sha256 "98470d25f58cc827ccfd529adacc98c1a30ce9af70a984f7d237d63330b265bb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.229.tar.gz"
      sha256 "0443a8fe98f20b6e00def666263f034ba22f7e20fc6b25c30ffc489c8d8a40f6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
