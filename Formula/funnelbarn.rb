class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.153"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.153.tar.gz"
      sha256 "dd61a387d7c60f27c839963c59dfedfa413a42af7e408f24c9e2be9d7bcaf6e7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.153.tar.gz"
      sha256 "a5b42e0c9ee12e5875fc8f7f89fc268eb9de64a835a3691d22f9b5af082e8419"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
