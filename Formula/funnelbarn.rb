class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.43.tar.gz"
      sha256 "148ffbd5465e43b6743bdbae0181417420b9782d2b4f129a78832c3a708be94c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.43.tar.gz"
      sha256 "69b83bad4d4f5acdf2ec9d2838c25d0fa77a3dd98002862dbb0af57e1fd3067a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
