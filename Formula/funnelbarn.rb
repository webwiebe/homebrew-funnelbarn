class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.25.tar.gz"
      sha256 "a83efbdf206cf0dcd6bdd35a54eaa3fcc1d4fd01939e2d9295d97987ddd94024"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.25.tar.gz"
      sha256 "38e279dcc920705d98c7a8d57fbe9833bc3329888823ed02e78c7950b860fee7"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
