class Spanner < Formula
  desc "A small utility for visualising Datadog traces locally"
  homepage "https://utf9k.net"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcus-crane/spanner/releases/download/v1.0.0/spanner-v1.0.0-darwin-arm64.tar.gz"
      sha256 "108d8ec60ee92019b5ca40f477b7440008bcb52578f16ca0ad9a7fa8f33ae19f"

      def install
        bin.install "spanner"
      end
    end
  end

  test do
    system "#{bin}/echo a test would go here"
  end
end
