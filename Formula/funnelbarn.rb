class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.242"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.242.tar.gz"
      sha256 "8c72999766f5166eb45510934d0ca8bc76338d218c07f510bfb9553483563153"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.242.tar.gz"
      sha256 "7badc4e78ae8e1d5e0c95b432bc82bfc94857bbd2b09b49c7a1ff845c6f8a48a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
