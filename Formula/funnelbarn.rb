class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.190"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.190.tar.gz"
      sha256 "5f52fdde6bdf294b4dbe1f292b8db4e6517513078cb9cacdad10ca348168864b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.190.tar.gz"
      sha256 "63ba43d8e760fe594bd53834807a80bc4e7b01d049349ac53540658f95b5cae1"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
