class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.100.tar.gz"
      sha256 "3f8b89f29ce6c1f5240a77bc5a207ccaf9fb5d697bf4b22c87e7b5b9432174f9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.100.tar.gz"
      sha256 "ba8744a5d29dbb6ff6dce12bf12f24f6118e98b04274be7663a73647f4915ea6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
