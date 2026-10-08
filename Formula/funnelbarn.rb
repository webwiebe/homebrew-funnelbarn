class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.66.tar.gz"
      sha256 "46a4611a5c77c6416fa1cb7db65ab9a2f80d3fec2f207613b24c1b38110078a8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.66.tar.gz"
      sha256 "151fe6ee81aa5f7ca175affa00d594a1a479de0773a0a79d86285fbdd0ab2a22"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
