class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.47.tar.gz"
      sha256 "1cc45b6e414cf6d2d7118b5f46f58107b1dbbc73a9b5d478b01042c39927e95c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.47.tar.gz"
      sha256 "4fc832d70927f97e399c0967d56ae7a52faeda06bb6c0d3be060df4f8be6b860"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
