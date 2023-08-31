class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.8/gt-macos-arm64"
      sha256 "68610caafd774bf73bfe3eca17aed7a9eaca186d0b8b46ca239702c80f35d53e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.8/gt-macos-x64"
      sha256 "ab906fcfbd892d933b006f21598a3b126f1e97c05d429e86a9255720cb0ba0fa"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.8/gt-linux"
    sha256 "a39358f7b2d8c3f486b979c543c9d1c8642046614b081727a10b5d7cab671757"
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
