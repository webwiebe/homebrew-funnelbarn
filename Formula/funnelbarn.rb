class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.5.tar.gz"
      sha256 "84f6c25058c404954dfe3246cd33560b2d09112aadacf7139ff1486ac32b43b6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.5.tar.gz"
      sha256 "20b273d2498e0499f92ad6068c7ebcf46c4b81f07719e06b9e29a4a1c3bc83c6"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
