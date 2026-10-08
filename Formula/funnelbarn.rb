class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.68.tar.gz"
      sha256 "1f3152d8db7951d039328ffc4896dd92269d2afc7976aba56861b8968dfd9043"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.68.tar.gz"
      sha256 "fae5d48a79b5cf02eba9af6fe1f242888d7614d8fb73089f8727bbe12ed2cd82"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
