class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.7/gt-macos-arm64"
      sha256 "d3d569c93491163ddf96376fdaabb7944ce4f38368bc7b0da0ab204f0eb70976"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.7/gt-macos-x64"
      sha256 "159746d947e0a736fb11e6178dc9022619bf8cb8135810f8902410a0fd910067"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.7/gt-linux-arm64"
      sha256 "2f9485248371ba434057861f5cce9708540057dbbe96eea6269e2f42fd7afecb"
      def install
        bin.install "gt-linux-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.7/gt-linux"
      sha256 "0b74f5ae19935ba441a0833443af2e48afaec956bbe63d8be1e687ea74ed7f43"
      def install
        bin.install "gt-linux" => "gt"
      end
    end
  end

  test do
    raise "Test not implemented."
  end
end
