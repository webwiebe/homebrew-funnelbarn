class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.95"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.95.tar.gz"
      sha256 "44fccd65193ba9fc452c58d2ae33c044549a6f6c3967342f3dcabf5635618ba8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.95.tar.gz"
      sha256 "f92a97c7d721fe7ebe4287ee75a1623b0e1ca881a7c909f3948d200e2378fc48"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
