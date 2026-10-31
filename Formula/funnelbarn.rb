class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.153"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.153.tar.gz"
      sha256 "46e51c46e1d3215cf55827ef6c799f6bc6c9c1812e5a53a5a8499532cbd4bbda"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.153.tar.gz"
      sha256 "7708dd6c1545062cc9843ecf52cbf0997f40412a366bc05009c305217f77fa3c"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
