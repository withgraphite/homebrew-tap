class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.6/gt-macos-arm64"
      sha256 "105a3bfbcd4d30aa8fde1af5fad414bcce9cc31edfd27fc5d6c5e0a2abf60534"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.6/gt-macos-x64"
      sha256 "a7958a5e3352a614030d2cea43c330a28fc76d33772de40cc31d7e4f9f439e81"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.6/gt-linux"
    sha256 "a69d0edc9dc292e92bd0c0ff932bb911896351d7c0a2e94bd4731e61f67a099b"
    def install
      bin.install "gt-linux" => "gt"
    end
  end

  # TODO
  # Hardware::CPU.intel?
  # Hardware::CPU.arm?
  # Hardware::CPU.is_64_bit?

  test do
    raise "Test not implemented."
  end
end
