class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.173"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.173.tar.gz"
      sha256 "e01c11e54d29b69569bec7eed4e9fdc40ab92d5b66573d85f7454dc060ae9cb6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.173.tar.gz"
      sha256 "b366b1fc1104a18a2aa93f7788a0fe1cc8ea8be1b89bd47ea436f808835f4b80"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
