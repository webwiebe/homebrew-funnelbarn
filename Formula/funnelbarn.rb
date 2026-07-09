class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.93"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.93.tar.gz"
      sha256 "741d66db99bbf34780ebda554be98187fb7bc3de38512d83d5508a0a49efe219"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.93.tar.gz"
      sha256 "bcdc9f2a1dd1245bb52777ea21b713fc4ee96a8d813459aec771355a52075f06"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
