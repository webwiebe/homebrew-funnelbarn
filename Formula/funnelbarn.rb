class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.12.tar.gz"
      sha256 "69437b33db5a88fe3e368a1a0f5bd77b794e6750cad4bbdf9cbf0d33c478f3a9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.12.tar.gz"
      sha256 "01852be65b7df8dbbcd87e89faeb9d6610e65f7229211d38eddf88011a121a1f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
