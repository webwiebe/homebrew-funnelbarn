class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.93"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.93.tar.gz"
      sha256 "eb84cafd0c8218165d21d39b36c5b16f1881e5e70fe512e41e4dad53f976b87f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.93.tar.gz"
      sha256 "4af58e0652056ab32e128fde9cd661b1df52c7ab9430d0aa6f6e842512a7ed3b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
