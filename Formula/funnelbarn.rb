class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.156"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.156.tar.gz"
      sha256 "0ffe1821afd4151cb9c47449c4f97cc4b2f0a1cd46a9600e59585ef336956a5c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.156.tar.gz"
      sha256 "dbbcabec5fdb9a51940be90769ca1ba6e21686cf50f06cfd91d80143744ad44e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
