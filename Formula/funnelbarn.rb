class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.86"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.86.tar.gz"
      sha256 "fed5eac90eb82be6b70ab580504f57ab532bc47649612ab866d48d3d57a016ba"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.86.tar.gz"
      sha256 "4c48a00a16ef649f5f34fff94aca886434b1b648037b86ddde3a23fc55eb8467"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
