class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.26.tar.gz"
      sha256 "0fbb1e11ced7638cc51b8803cd737777ad259f5f8877c82c772539d4cd51245f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.26.tar.gz"
      sha256 "45307d9d40b25de4775c0541be63906dcaececc73809a26ca6c4cf0cf605d4af"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
