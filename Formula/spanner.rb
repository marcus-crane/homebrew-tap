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
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/marcus-crane/spanner/releases/download/v1.0.0/spanner-v1.0.0-linux-arm64.tar.gz"
      sha256 "5af80d74ce570c0cb4baa7b0d5b92ef7f5c06bb2f070714fa51c9cb4caa29697"
    end
    if Hardware::CPU.intel?
      url "https://github.com/marcus-crane/spanner/releases/download/v1.0.0/spanner-v1.0.0-linux-amd64.tar.gz"
      sha256 "779c42d72e4fc0aec131a54e002a1f56747d3bf55c061184f4b12825f1fbfb61"
    end
  end

  def install
    bin.install "spanner"
  end

  test do
    system "#{bin}/echo a test would go here"
  end
end
