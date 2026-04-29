class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.33.tar.gz"
      sha256 "069dc6efbc1f39daa6135842ae586adb43328781691562eb6f7762cf2dc896be"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.33.tar.gz"
      sha256 "abb7e6707e8331da9a9be21ae9697a20afa18de84b71f5182b5d99f844b0ef71"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
