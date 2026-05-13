class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.140"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.140.tar.gz"
      sha256 "70c81fe58a2f465d7f625fecf83337ee648cb5bd1be54d6ea77cc7510c04e83e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.140.tar.gz"
      sha256 "774d000fa34fe942a8e94f965ca6b460d842f9d77639e4844bb4e8e1cbbf0b81"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
