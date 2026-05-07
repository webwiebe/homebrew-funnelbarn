class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.134"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.134.tar.gz"
      sha256 "8fc5b2c9d2c884f00d6a05450ddbe2bb3eb7ef0a2f2541cf04922138f32c6dc4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.134.tar.gz"
      sha256 "0f4450640df024a022ed14642ff56e2681e2ab1580739272e33b54f43be5ebc7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
