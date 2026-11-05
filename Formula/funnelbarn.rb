class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.169"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.169.tar.gz"
      sha256 "36ac73f74d49548de5aad4db9ffef0c62335dfbf4f5f589e80738b601d95256f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.169.tar.gz"
      sha256 "5aa5a2cbd87f31be3d3904024102e68c5624a6989b5105a3ebf2060f34df654b"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
