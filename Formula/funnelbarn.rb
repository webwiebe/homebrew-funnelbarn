class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.123.tar.gz"
      sha256 "6d828031067181dc014f2770add9d40ce0dcab2febfdd3d03deefb272b13f08f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.123.tar.gz"
      sha256 "079e8330d51fae959ad9a9158cbd91d6012e7fb7a9a3f2f99b31ece3b1cf0db6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
