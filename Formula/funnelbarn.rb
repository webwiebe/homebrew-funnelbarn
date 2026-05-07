class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.135.tar.gz"
      sha256 "8452e58f8d3a69033edcec7bbdf50ca40703dfa1cd16839211afb27ef391bcce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.135.tar.gz"
      sha256 "8db2db51b8bfe208f6a91aec7dbb29d174a9c5dbec4e68cface7c9886bc84ba8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
