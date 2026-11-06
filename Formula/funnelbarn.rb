class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.178"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.178.tar.gz"
      sha256 "f2dd0c6e9287950595af119f6ef8d9f12746db518626aa921ab223c28358d1b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.178.tar.gz"
      sha256 "4bcf53da06bf534b755f875bba7e546534ef0dbc2485bd88a2f6f2f8d4e7d4f6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
