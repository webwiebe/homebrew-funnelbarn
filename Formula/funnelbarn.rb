class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.48.tar.gz"
      sha256 "883f7cc77e60a402ec1e0c3be56b91af0e9719815f066d4ad5d5e6e0a5476eec"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.48.tar.gz"
      sha256 "3dd1b7e0e5ea1a8522883e76cd70cb7230258704d25481196c36fac310ed161f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
