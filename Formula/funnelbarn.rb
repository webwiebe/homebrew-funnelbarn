class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.2.tar.gz"
      sha256 "eca854951672277914bd60439a4ddfa8378fd01928362e5615ad30d4b3f857d6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.2.tar.gz"
      sha256 "648246594e0aa1cbc83a2aec41daea52a8504eb15c7d987ffaa5971e6b90e95a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
