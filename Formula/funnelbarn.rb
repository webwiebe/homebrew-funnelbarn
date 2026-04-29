class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.30.tar.gz"
      sha256 "6f6b20b9dd4ad45569d3807bd821883a46ca484afe9e51e0c7011b9c1221d3a1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.30.tar.gz"
      sha256 "562a30dbdc0fd959a68354e42832f375ad7852c9942a2d714d47c9f452650b99"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
