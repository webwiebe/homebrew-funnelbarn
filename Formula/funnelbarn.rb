class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.21.tar.gz"
      sha256 "16a2c853dbe6f3b902e4183a645c9c69678181e5e4aa02f2df46b7b45cb29657"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.21.tar.gz"
      sha256 "826345b0d9d2fb295906baece0cfe798ad67bfa3803b29b6feafa89fb3ebc215"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
