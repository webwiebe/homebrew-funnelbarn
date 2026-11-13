class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.204.tar.gz"
      sha256 "db745da8fa96075c960083b6137f0b4bbf0e7d85bbda8753899a4da66410b7ba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.204.tar.gz"
      sha256 "7c6f6995f010e2160f43e4ab5ab985c35e505e9ee8effca86c054dc623cf74fa"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
