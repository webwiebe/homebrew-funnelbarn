class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.151"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.151.tar.gz"
      sha256 "02ed392370d62fef382ee8f4ec11cd16b9eed252b3a3add1f4ce1037db1abbe9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.151.tar.gz"
      sha256 "aaf93f891995b1a17fe68412e6fbac061c11e685ebd8fdc069ad98dca93edb5b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
