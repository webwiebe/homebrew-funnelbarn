class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.81.tar.gz"
      sha256 "1efd626521b2de83577b687612305f34f85386689f2e47a1f757fd3bd5de1020"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.81.tar.gz"
      sha256 "64f84ce925a1fd4d166e33cc74cd27d5455224d05bb520fbeca53fc9ffeeef5e"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
