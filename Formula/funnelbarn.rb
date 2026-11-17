class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.228"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.228.tar.gz"
      sha256 "14d5138f423ef788be65c77aedb2c87555ad4db8c04cff400d10c5a0294a787d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.228.tar.gz"
      sha256 "99df2fde5f25514408cb11f5a3d80527ee410371e4c8ee65b6d6825cb9f7a23d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
