class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.5.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.3/gt-macos-arm64"
      sha256 "532f3f4d5b57d2f95b81a4a94a0264dc49ee3224426554fc7357b03781cf7503"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.3/gt-macos-x64"
      sha256 "c4c10c56d0655d112105d535d6e557a1b201e66f2755afc3002b2e1ec8126832"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.3/gt-linux"
    sha256 "1810bef3120d8fcd5d20d86a72b7c6116691573a17d42d1d51175a5f83373015"
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
