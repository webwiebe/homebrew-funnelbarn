class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.177"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.177.tar.gz"
      sha256 "3304aa99589da9785eb37af77a65f6aebd144e4285229cc580e4084cc476fbb7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.177.tar.gz"
      sha256 "cc9ad533355a4ae23171bcc8ac0659eb788065ab38957de64fbc3b14c956b8fd"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
