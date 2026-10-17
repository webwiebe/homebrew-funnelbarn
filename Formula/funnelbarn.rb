class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.103.tar.gz"
      sha256 "63d3ae729e5e3fc817df84f2782cdb5559eefdc9196e5da84727a73ebe8459f9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.103.tar.gz"
      sha256 "5194ab8f3dabaa11d14321886bf880f90ce3dbc566e15bbac96e57f0feaf925a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
