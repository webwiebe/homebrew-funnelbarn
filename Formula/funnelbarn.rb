class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.0.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.0.131.tar.gz"
      sha256 "24d6a9d3b4e3aa3f3bfddef3ed4c3861b8e501fd5224c98b75613427bc78a192"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.0.131.tar.gz"
      sha256 "16d9e4c05c8aa36803b63fc5e123479b01e12b8dba40a5dc3454987fb350f11d"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
