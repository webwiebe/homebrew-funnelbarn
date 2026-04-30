class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.86"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.86.tar.gz"
      sha256 "84aa3fa70a08cc7312eee07a2211e665d075e9e00fa5eee78c417dec9a98fa28"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.86.tar.gz"
      sha256 "fa48cdc22fb812a87a21aefdebf3131471c3325f932aeedcfed36de5d349c98a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
