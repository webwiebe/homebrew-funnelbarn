class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.170"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.170.tar.gz"
      sha256 "f56e15ea50332a5c554da7d239b0466733c0944cc02f81c5770f6254ba146312"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.170.tar.gz"
      sha256 "c870f31d56d930ee00a0decac8d23e6dc6db84538b0338fd358b0d6ff17a7856"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
