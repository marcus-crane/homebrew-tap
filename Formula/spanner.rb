class Spanner < Formula
  desc "A small utility for visualising Datadog traces locally"
  homepage "https://utf9k.net"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcus-crane/spanner/releases/download/v1.0.0/spanner-v1.0.0-darwin-arm64.tar.gz"
      sha256 "108d8ec60ee92019b5ca40f477b7440008bcb52578f16ca0ad9a7fa8f33ae19f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marcus-crane/spanner/releases/download/v1.0.0/spanner-v1.0.0-darwin-amd64.tar.gz"
      sha256 "0872aaef4c7644b3eae974e289dd5bd25c71c1b6adf3b0b37523cbd6b816103a"
    end
  end

  def install
    bin.install "spanner"
  end

  test do
    system "#{bin}/echo a test would go here"
  end
end
