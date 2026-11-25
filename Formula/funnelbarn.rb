class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.258"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.258.tar.gz"
      sha256 "67ba0955a3e2abee426575a0f2afb21f19181b7a21b58dd2c3e401de554bc18a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.258.tar.gz"
      sha256 "1fb8e8c9e6e75195bc03f37511fb079e6dc06e87e1ad3ee2e4e8d2bf2ec85011"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
