class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.39.tar.gz"
      sha256 "4e620e8ef79e5d15fee09ab74d549134f4b673d7b32dfc5ae432d77e56d52f3c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.39.tar.gz"
      sha256 "d6e97e37ec054f5eca79f64f4407ef8012d5fa024151dbc7cf7fc980343247c2"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
