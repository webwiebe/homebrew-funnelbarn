class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.254"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.254.tar.gz"
      sha256 "ca2b960c068b9b98799bb40f4a7a631b244be90dddc465bd0aa2903b69705c15"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.254.tar.gz"
      sha256 "a798af1a546595998238c4d445085fc7b31be7f98aa8707b2acd39b2391ab7ab"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
