class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.200"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.200.tar.gz"
      sha256 "37f7020ac75ef2a4f801f2b8e9dad611bb7320ddd1f9be3dee671a517b930818"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.200.tar.gz"
      sha256 "9f485f49a62a0a0df0206daf4d8bfe9384fd303dc84987a47f8688b871ed6537"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
