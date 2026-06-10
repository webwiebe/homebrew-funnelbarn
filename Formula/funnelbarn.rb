class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.59.tar.gz"
      sha256 "219985c30522c32d8f64db53a55bced221a585aca1dfb41ea1ab14cd5d8a4e73"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.59.tar.gz"
      sha256 "2627e37d72e7a4205216adceae212fe1b80db22a4eee6a88ea9bef6ead56750f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
