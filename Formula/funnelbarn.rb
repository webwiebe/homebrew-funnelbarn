class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.186"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.186.tar.gz"
      sha256 "0070448793b09b4b48a5a46b36fd35f01fff4ee56dfdc8e7073b6225883bceb2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.186.tar.gz"
      sha256 "8f650804fe5eb623f10d7b6ce898074f47ef6466c16c747ed3ea0c6edc4622bd"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
