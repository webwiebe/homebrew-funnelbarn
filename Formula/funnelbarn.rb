class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.88"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.88.tar.gz"
      sha256 "63cf57bedec2edb8b4f11c1225dbbfdc1f71bdefc2f200102b20c67353a50f82"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.88.tar.gz"
      sha256 "f0797b0e98a57fac8ab808a8b5db97f9dd5c1670062842307076916cbb55d2cd"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
