class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.4/gt-macos-arm64"
      sha256 "0d0a663b7aef1d2f76913f666377950a2780504c9e55d5356cee1d44d6f684ae"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.4/gt-macos-x64"
      sha256 "5f236fa17e2077d3c51ea14c0be2b7cdf32103d36ea97ac986199a8b2ac17ed7"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.4/gt-linux"
    sha256 "abb0312286c67ceca8ce134591c48c957ba428b6df79b8b4df1e024a5daf3fc9"
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
