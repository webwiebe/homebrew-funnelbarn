class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.98"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.98.tar.gz"
      sha256 "0e2685d7c9a5365481d2a4d59d4c127f6df0a1772a68916b95e40aef311035b6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.98.tar.gz"
      sha256 "1049198c496e45bac2ee1c7b6f4bcabf74e18170c39e28a7f33f1d6341590886"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
