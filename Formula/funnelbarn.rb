class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.29.tar.gz"
      sha256 "5f271f3248195a042517e4ed48b41d85d72867c09693e5ea6d50a12ff01504ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.29.tar.gz"
      sha256 "dd6a8fa43c98c0a6a29ff79727aaf73278018e9e223f4bab7d644738f399dd6a"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
