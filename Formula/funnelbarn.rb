class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.188"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.188.tar.gz"
      sha256 "66d719b860e1dee426ff68e93168a9d0865aa35f5bd446551807ee0b9bcc68a4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.188.tar.gz"
      sha256 "6eed3e2302fce87e62017bd3dd259c0f877e53acff9be169c24db31aee913416"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
