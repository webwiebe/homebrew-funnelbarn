class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.139"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.139.tar.gz"
      sha256 "d4d150695d24fb093dcb3dd828fbeebe5bddb55520ca1bd64a84525c99b7e784"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.139.tar.gz"
      sha256 "12d6c33c07757b1f34e76d99ac2aa9468e62aa8ec4d5e397d4090fb4726d4399"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
