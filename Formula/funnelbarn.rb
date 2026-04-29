class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.41.tar.gz"
      sha256 "238d0740746e5de33f3dcfc22db82f5d9536387e1a16da8daa5e269ce9cd91fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.41.tar.gz"
      sha256 "82ece1d2f6aa65c805b12060d4f8e405bcc1faa63b18954440ac97646f4e2764"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
