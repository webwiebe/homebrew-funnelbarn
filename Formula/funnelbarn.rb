class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.5.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.5.53.tar.gz"
      sha256 "02eca9f7c23c4f19e04d69f5d200a7855584cde7a8631bf44c57c0a9add576cb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.5.53.tar.gz"
      sha256 "39ad0232edbcf87f4318e30b929cd54f3404590ba8566b4c62ca1c714e558de8"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
