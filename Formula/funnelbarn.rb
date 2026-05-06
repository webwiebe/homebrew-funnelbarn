class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.119.tar.gz"
      sha256 "c5d6aa6c86d5e73b8369f3d8139fdda6c6954f00958ae99c82a382d41a9da947"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.119.tar.gz"
      sha256 "e683eb3b587b0e86d49b72fd3a36413afbfb7fe804b4c459b0fa31dc261c32af"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
