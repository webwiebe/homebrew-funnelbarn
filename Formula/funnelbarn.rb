class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.54.tar.gz"
      sha256 "689ee353d0af57af709f7e8314950351a46c5a901f89cee88592efd0699c86dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.54.tar.gz"
      sha256 "acac709f0e9969fba21eb5bd21bc0143d9c85b1231cb08e6d90020a91bfebf50"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
