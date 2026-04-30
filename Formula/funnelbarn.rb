class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.94"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.94.tar.gz"
      sha256 "f4b29c2f99b0c05546d8d1e16d39ade72e516f777a635e48dfae0c1177b884cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.94.tar.gz"
      sha256 "2c018b33f441cf94daee4bcda6d911635229d41a501fee6f0d8452c4fb2791bf"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
