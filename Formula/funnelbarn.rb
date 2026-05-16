class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.2.2.tar.gz"
      sha256 "7263109bbf035a04512dbee3cbf806a29ed2fb0bdaa8d99a4a48ad0ab544a951"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.2.2.tar.gz"
      sha256 "9e07a333c73832ea05264675f1552844f968c948cd1669c942da301c7fa38ea8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
