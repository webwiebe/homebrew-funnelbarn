class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.162"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.162.tar.gz"
      sha256 "386ee3f860053c00bbe1b73a1a4221dfc2f1050aaa6f74dc4d33b87d37894f62"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.162.tar.gz"
      sha256 "3ce5e51090673dd9f917e1bfa93e3d88196d39fc2bc1fcc39b33a41fb076ee66"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
