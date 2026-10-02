class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.57"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.57.tar.gz"
      sha256 "bb2c1709293cec0e1f6f36e8f1d7490b57cb19b1bb651538f5db46b65d7e4e89"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.57.tar.gz"
      sha256 "ba108304a273814211e57e60040454bc904ace575bc979470dd9a4db264c6a0d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
