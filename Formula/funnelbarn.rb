class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.236"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.236.tar.gz"
      sha256 "56048c744b21d903abbb65d660b7e40988ff49e1ae10bf8594cca94747188b54"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.236.tar.gz"
      sha256 "61f6f2ee4c1f2225b8ace0712bd0ff6eaccad8312b9acfe8f689c16330e3529e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
