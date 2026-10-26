class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.128"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.128.tar.gz"
      sha256 "54a3a9113713d46b00ae3cacfecd37adebbfd54881ca9ca2f939edcb79834368"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.128.tar.gz"
      sha256 "08e053ff562d9e9dbb3483ff47f954c0709a90b3cd01a2514a70276f1d8461ec"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
