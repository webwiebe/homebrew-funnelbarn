class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.135.tar.gz"
      sha256 "b9e0a828b7442880492a59ca23879e077d7f7f7f3d973fdcefc83e02fe79df51"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.135.tar.gz"
      sha256 "782e78462577f7723220057176a69a2ca297780d1e30f77c0dde19c2db0f80ef"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
