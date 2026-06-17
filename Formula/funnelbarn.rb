class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.85"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.85.tar.gz"
      sha256 "0e9fdcf6c0050a74dbe208c892f6345e71af83532f2957ee645f8592b76dfd9a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.85.tar.gz"
      sha256 "51d4dfd9583bb4f27ccafaded028dfda5824ce9c9c1784c9d133a599b6746403"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
