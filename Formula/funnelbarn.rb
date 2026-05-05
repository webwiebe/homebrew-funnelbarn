class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.115"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.115.tar.gz"
      sha256 "53ea51d59b6497f6c0439a095eb90c1fd081f5dd9b5cfa1b3f47a1aadebb1e9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.115.tar.gz"
      sha256 "1502dfdd13dffee6107b7769ca4b1e8798335fc59621584857fdb49595d34971"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
