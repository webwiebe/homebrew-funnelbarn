class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.105.tar.gz"
      sha256 "449609315bf31fc5903949e4241783d8b6749eae4e0237ca5703535357ca6cf9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.105.tar.gz"
      sha256 "84e542c934d57ddb3fe305ea81ab3fa32ee5d13d92a81f77cf3934c4427d7f6f"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
