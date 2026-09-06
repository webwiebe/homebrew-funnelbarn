class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.30.tar.gz"
      sha256 "9c2c2f3800ba309f693717769c531c322dd34e89323da6985e1dce24db19c3af"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.30.tar.gz"
      sha256 "4825fce1eeb3351512ba1f2c1fe688c87e5bcd5aa1316cdc2bf9b152fd690347"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
