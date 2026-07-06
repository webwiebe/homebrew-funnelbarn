class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.92"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.92.tar.gz"
      sha256 "14c779fd03d489e17f32c88a94cf770dc56d5cc6ab99abd40332564e115e94ab"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.92.tar.gz"
      sha256 "045d6b8ab2ff776556d1705b3057494626f4d5ca100952e174d947f377176f94"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
