class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.33.tar.gz"
      sha256 "c3e70b22a92c4a25c59c4a3a1ec7572925a75c5d62ed649fe394b1e7230e118c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.33.tar.gz"
      sha256 "3ec782ee8c3af14714f7f69ad64cee56eeedda12b1b554d1a5494d1802903e3f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
