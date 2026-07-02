class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.89.tar.gz"
      sha256 "2f1c15653df37530dc5e9758544210c1711ad99b9b4933d0d1f4e12ecb75827a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.89.tar.gz"
      sha256 "073734d1d9c4d7415fef19ff906a03dfbfd5c84721f3b04c9474fe842c408c25"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
