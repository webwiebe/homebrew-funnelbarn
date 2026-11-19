class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.250"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.250.tar.gz"
      sha256 "273c0b6aecc335a48f1cf4ef065d624425e197497978e2d6903fa100f0bd17ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.250.tar.gz"
      sha256 "a955dd2d542e1e884ee39f8f9a1b444434057577cec4a8a8cc9ca72e3affc4fe"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
