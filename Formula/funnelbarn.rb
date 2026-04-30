class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.48.tar.gz"
      sha256 "810ae5dcd7a02c444d4a70fb8a16fc2e6c325ca669fd4a169d61ff15020d98ac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.48.tar.gz"
      sha256 "4425015984860ba916eb408fefad4ab1e669f4c85c850e4826d993754b71ac8b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
