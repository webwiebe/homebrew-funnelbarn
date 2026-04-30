class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.65.tar.gz"
      sha256 "de571d12d2f63e2341ec79d1266a869bf5c9075cc3a19bb3cf31a6ca23404e1f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.65.tar.gz"
      sha256 "269a910a7a431b719c31e11a47fbfad3326ad02f9d92d02930f4e7f1300c09cc"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
