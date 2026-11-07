class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.179"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.179.tar.gz"
      sha256 "ef93428431f265298cf6fa200ed4c5d9d13faaadf769392fe19e6a4fc787f2ff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.179.tar.gz"
      sha256 "05c698b05e1b66aa584859ece587632aadcd12c8f540bc72f2ef59b95b37f28a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
