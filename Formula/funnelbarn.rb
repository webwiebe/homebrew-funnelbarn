class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.193"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.193.tar.gz"
      sha256 "12298917a9cef1f6a19ff2a3b94009dae251eada56ba47fc94853aed80b145ae"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.193.tar.gz"
      sha256 "a8700f578f28f0b37732d237a13abebf9a956af9bcdd593295ac845e4b2d559f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
