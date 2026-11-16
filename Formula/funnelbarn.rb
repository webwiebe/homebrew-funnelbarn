class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.220"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.220.tar.gz"
      sha256 "4b42234d810cd7ed92e4dfcfbc5b79870f763c239c943244a1a7ac1029d83281"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.220.tar.gz"
      sha256 "d40d1c67216cf7ac71afad3d836231840f9404d0fd36ae32f42825049c88e59d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
