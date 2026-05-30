class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.46.tar.gz"
      sha256 "d9dc4085c4333e33b3679b48ab91cdec618c9ea2df462d1af1049b3286e92008"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.46.tar.gz"
      sha256 "efaac0aaa49ee851963eca918d90a4712dcb65165767cfaf4ab140a605bbdc3b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
