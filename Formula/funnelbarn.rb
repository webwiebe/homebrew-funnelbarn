class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.147"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.147.tar.gz"
      sha256 "5a1e9f78f6c3ec88d56bbed0ca92005d6ef556423136cc699b0a1e74949c18aa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.147.tar.gz"
      sha256 "1cb7498b1e569980f0af708c209a1768de53c583260327ecb7c42848e31457ca"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
