class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.24.tar.gz"
      sha256 "d9ae474bb1aa8dc9b2105b6bbe2118e1c11b60d39de34781f278c0abd67eba54"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.24.tar.gz"
      sha256 "e09f546f9a20efbecf6d3fc0eed07009de2fa8bb76e936892890508707d09910"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
