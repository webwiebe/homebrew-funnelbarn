class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.148"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.148.tar.gz"
      sha256 "0d7ad129243ad2fd799746697f47e7e8af835611704f65875efc2206c30aea85"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.148.tar.gz"
      sha256 "1c4db73a5678aa9ce37bfb400b43c641097f54edfe940ad4d287ea12a82d2bca"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
