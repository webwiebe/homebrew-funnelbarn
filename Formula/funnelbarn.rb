class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.42.tar.gz"
      sha256 "3a661421a2f46ea839135d52a66b6ab6f7478e48d4a95fa08e938e2ea8cc9721"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.42.tar.gz"
      sha256 "4bf35dff68d9aad8cbb8683a9241fcb3b64e566f7fd2bba202be21d0b690078e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
