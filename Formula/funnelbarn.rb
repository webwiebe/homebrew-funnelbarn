class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.84.tar.gz"
      sha256 "c0cbdd8ec3766b6fee73b5ad03aa5ea0941bb3331d5fb28229a2fafd927eda77"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.84.tar.gz"
      sha256 "f23562642145a6f7d1a3223a5bbf529bccfd388581f76e711d98fbc33a329bef"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
