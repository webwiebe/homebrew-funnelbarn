class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.35.tar.gz"
      sha256 "cf04fef728bcbc0f8aa574894e12891e784a16099b160d1ad4da9964181ca08b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.35.tar.gz"
      sha256 "297365f46254e5f1777a36940e7dc5d382d6fd2e82c32ff359b20c8f1cd15066"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
