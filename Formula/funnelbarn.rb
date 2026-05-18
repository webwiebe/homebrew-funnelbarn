class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.11.tar.gz"
      sha256 "5aa3acadd602a3d0eba0557ebc50fef7018e4c734888f5489dd6a67bb9274663"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.11.tar.gz"
      sha256 "9612a38c41882f6085f21cb4f20c48e24ae7dc25e3b1e77797059d34447992d1"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
