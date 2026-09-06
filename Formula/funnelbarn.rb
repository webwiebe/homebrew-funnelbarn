class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.34.tar.gz"
      sha256 "4397c37a30d1dbb2db141e8860b17ec22c03654c76c0112b687034ea3fe56497"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.34.tar.gz"
      sha256 "c7cdb57b540600ae0b3f75048f240bb4213662afb29bcbe1a986546d53744c3e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
