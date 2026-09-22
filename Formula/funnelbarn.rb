class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.55.tar.gz"
      sha256 "aa3aaa7f9b05cc4c9fcf21ce0bdfc58f1ef3418d5cf1b4213c66a83d07ff9d51"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.55.tar.gz"
      sha256 "5e3718790cee7df5d9431ec1ce4a26d6e8239eb034bec2589211a5ff72575fba"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
