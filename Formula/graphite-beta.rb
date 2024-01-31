class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.1.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.4/gt-macos-arm64"
      sha256 "488f3521c9d6d53770bf53cb26da29621ad94a9f08103a043697d164bdcf4d46"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.4/gt-macos-x64"
      sha256 "80691128d4a340f78fbb093f0cc490e1a88634d555042990d57312fef7d6c32e"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.4/gt-linux"
    sha256 "0aa107124fdbff9cfbd6373eb1f4a9e64d1a1ca02c955a14bb22a586f7424989"
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
