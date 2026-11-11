class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.197"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.197.tar.gz"
      sha256 "060a624e740e85e9245ebec74b4beff6d87941c984ba873420fb8bb6ff25a9a7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.197.tar.gz"
      sha256 "1c3e1be849b7d0820cba3487841b70259ec9b9c1b5599089f5d4306a0efb1472"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
