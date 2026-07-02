class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.90"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.90.tar.gz"
      sha256 "305c9fc0d49a8924552f0a0adc4f67ced612259347c9d5e1b333c79f173c3cdd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.90.tar.gz"
      sha256 "131d1e29d95c5b42951470c5a23ef9783d93476d05786d95186c620ee49b9830"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
