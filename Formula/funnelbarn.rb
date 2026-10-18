class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.110.tar.gz"
      sha256 "56d04193b5e27e0e9ffec934a84605eceee80fb525c52e9a9ec8fa77eec99266"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.110.tar.gz"
      sha256 "fec3a9577e45230dc868e88f486cbe992f1a3fd459d856ee1bd7afc03ccda8b0"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
