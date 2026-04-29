class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.24.tar.gz"
      sha256 "9202eeacb8cef7de433acc83ca3e303f82270e99d1d6062c56d44cfa35f532c8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.24.tar.gz"
      sha256 "9eca78fc34da03cae3fe930d06e5a8b79b80e7f2c1706b8db400bed56163fa56"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
