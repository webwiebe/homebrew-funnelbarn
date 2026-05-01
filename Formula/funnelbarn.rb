class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.103.tar.gz"
      sha256 "781ab787c853eb8355bd9cf01db5a1b9230db35b05e13c3271dccb75bdd3db0d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.103.tar.gz"
      sha256 "b596c2705720e192042ed337e18b205ab1d4e8d218a5b45c603054cd9d9faef3"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
