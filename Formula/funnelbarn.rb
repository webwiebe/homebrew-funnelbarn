class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.126.tar.gz"
      sha256 "2cdf7364bd4a45b0ce87c7eabfc03f40650bb1d89170f230ef92071d7cc2fa69"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.126.tar.gz"
      sha256 "0b4dbe3aff068c70014f9ef6014e435627b39be274b1095c390818a179b09af3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
