class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.71"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.71.tar.gz"
      sha256 "3a3cdbffe8dbfd1c2d8d1ec9ab00c8720d7608cc1d8544378b68027285c29a6a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.71.tar.gz"
      sha256 "28952dd42ccdc73d336b570158622a252958846654ad530aeb1d32c212a7d67b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
