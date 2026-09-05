class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.26.tar.gz"
      sha256 "18b3b6fd406d1509b7435eaf3eea05d8b27ca61db3c183d135d13c0738459755"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.26.tar.gz"
      sha256 "42c23dd6f0f8a63c440334259acfaae79b3d56a33f1537822e9b8b5ef973b937"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
