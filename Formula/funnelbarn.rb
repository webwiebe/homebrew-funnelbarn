class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.67.tar.gz"
      sha256 "90e34c80d3139f03b538a5fb238dd68a209629a9e8abf1df4bf6dfbc3917d7b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.67.tar.gz"
      sha256 "a16f3aff1383c938a49cfa53c7035e09112d360b37ee5a5ee1a7edd4ad0cca43"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
