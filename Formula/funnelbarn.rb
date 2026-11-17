class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.225"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.225.tar.gz"
      sha256 "12bcc5b8a614b4cd187c16765c36c8b177254e66b5f3e4db1f91aaf43ed73a4e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.225.tar.gz"
      sha256 "3e4d4b0dd345560d8c6706ee076460bcb6004f970bb1d9c72b7565c22eff1bab"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
