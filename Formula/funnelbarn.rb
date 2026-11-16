class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.216"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.216.tar.gz"
      sha256 "44e2f52d4d8fcb0d7b77756e5e009f909812ce28346793d5d40a0b51df13117b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.216.tar.gz"
      sha256 "2b947e3d4c17843b403f4d2c8af2ea952997bc06cb69abc9fa4c48fa177ebcf6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
