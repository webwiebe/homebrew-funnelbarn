class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.136"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.136.tar.gz"
      sha256 "5af25ad7dda9d520f3d62ab5459644af42e6fa5142cf82f5a8d48e6a35d9f10c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.136.tar.gz"
      sha256 "648e38d0e9d8cc67e47c544a93be3f700be4cddf90a51d29bee49f95a65c3894"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
