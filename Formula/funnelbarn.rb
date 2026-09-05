class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.22.tar.gz"
      sha256 "d65d6cd3e91515762eb3301c44354ca326b03bd867447480e30edf1d9a4b20b4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.22.tar.gz"
      sha256 "e321d41a4a39411d5a9b99e9aca9ece53c4ef745015e9ff1e1ab5b24856d5479"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
