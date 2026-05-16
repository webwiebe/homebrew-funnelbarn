class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.2.4.tar.gz"
      sha256 "1be62cee61c8c5e1fe63254fc9f13cc5c8c9e6f1cc2f07fc538ee749699fca90"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.2.4.tar.gz"
      sha256 "a718ecfc524a7cd9b8b8735ffa156c6257b15fc2b3520550e7af46ffb995127f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
