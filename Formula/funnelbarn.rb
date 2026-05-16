class Funnelbarn < Formula
  desc "Self-hosted web analytics server"
  homepage "https://github.com/wiebe-xyz/funnelbarn"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-amd64-0.2.5.tar.gz"
      sha256 "ccd7102185d7b319122eac2440d8210ab7089a83e92de1a3f9135c3d65e1be92"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/funnelbarn-darwin-arm64-0.2.5.tar.gz"
      sha256 "13952b89cbb529267889d89686e9836b50f6f127200471dbb03ac198cc454d53"
    end
  end

  def install
    bin.install "funnelbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/funnelbarn version")
  end
end
