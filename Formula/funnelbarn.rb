class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.83"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.83.tar.gz"
      sha256 "1d361d81f7a55c46e420ece0fdf57c13ac6f2b13720587d66d0eb09684d202f1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.83.tar.gz"
      sha256 "8c3fca09f900e7c171b00929122f50b57a7b23bfc90957d9e3729fdb4d22123d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
