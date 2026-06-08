class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.57"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.57.tar.gz"
      sha256 "c2562d4abc07e0ffc0da8f4599a1c1f7b15bdb53979307435d35850139eca175"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.57.tar.gz"
      sha256 "5a86f521318558a41d05766ceef13d4cff183795f9ce5a116f34bc1fb3f86e4d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
