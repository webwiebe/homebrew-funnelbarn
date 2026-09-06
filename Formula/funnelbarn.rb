class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.28.tar.gz"
      sha256 "79d27d2a1dcf1ddebdfd7629d728249598d096bb6ad4cd4995595260e17023b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.28.tar.gz"
      sha256 "cdb6046742df71326cfb54d7bccf84aa2c8e112bbb5b585df5c6d98a23f222f5"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
