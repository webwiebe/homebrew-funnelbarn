class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.4.3.tar.gz"
      sha256 "bf6b1102c34fafdde6f1171e113cb1d6d03e27c010294261649be43b677d63ff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.4.3.tar.gz"
      sha256 "da8fde60ea5602f1fab12e2cc684ba17feb39a4374137499472fe4e1396cce77"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
