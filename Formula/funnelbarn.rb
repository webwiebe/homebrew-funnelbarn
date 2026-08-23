class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.6.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.6.10.tar.gz"
      sha256 "807fb68ff48de8594046d1698880f7cc45f4d5cfe489e5ce813d04c5cfc01df4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.6.10.tar.gz"
      sha256 "4962e54f0e21af23631c5aea57a464bf55be105a1391c75d96aeff9867ade182"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
