class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.114"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.114.tar.gz"
      sha256 "3975c5e9d1eaf9340f4041f41731fcc4a7d2b4fdc2093b6211a09bc4ff30ccc4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.114.tar.gz"
      sha256 "b990774fd1b86be0f393eaa15c445e445a21fb83f69530cdfd2da9ff1925652e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
