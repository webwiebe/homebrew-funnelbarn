class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.189"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.189.tar.gz"
      sha256 "818673a96fa36836c932fe55e17b48b91c3212baef10b40ca0e105792c105fc9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.189.tar.gz"
      sha256 "d4e2da08d6b4aadbbaf1f7dcc5181b67e77a286e6bdd2ec296d2a4d9746343cf"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
