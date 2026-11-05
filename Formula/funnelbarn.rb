class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.159"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.159.tar.gz"
      sha256 "40f1b4fac41a7a164000f7cea4d36563a5f4423cf1c58b1804d61bb3cd10936c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.159.tar.gz"
      sha256 "ac498bddaa37461e6bfd72feba5b0e2a5168037c3af76229c352b99e597b3cbe"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
