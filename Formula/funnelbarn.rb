class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.37.tar.gz"
      sha256 "71cc90d97ada47b23518a14156c3cd0056b7e22bc5e85c12d86902c602d0b00c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.37.tar.gz"
      sha256 "b389c9c41e8be6a999189bafee185bc04f09daf4b2ecfbc1c72c0fdd477726e4"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
