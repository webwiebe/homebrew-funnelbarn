class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.241"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.241.tar.gz"
      sha256 "020c1bdc8cd7a98f41351268a6f48431dc7bafe0d26cc2554a28757df1097d7c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.241.tar.gz"
      sha256 "5eb3522d6c27d42fbe9416eaa689bdb08629883239d82a7d2659abaf2b688f88"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
