class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.264"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.264.tar.gz"
      sha256 "1d8a2bf674036aac4747159e1dd00ba5bd49f453d37084cf7cbeffdd96f0fb57"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.264.tar.gz"
      sha256 "8339c47c312c3a8c3e52bcb3c570b099bc273f68a22395da6a8182aae0d1ec58"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
