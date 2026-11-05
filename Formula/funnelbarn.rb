class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.168"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.168.tar.gz"
      sha256 "962a8f9b55f4349d616fd9aa25bfd3ae2bd656297f65435b4d2ed42cbc6a7057"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.168.tar.gz"
      sha256 "61f4bdc68f32acc9c0f4d592bc5a1df89273c706cf07108cbd514427f1391e66"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
