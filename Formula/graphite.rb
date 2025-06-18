class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.5/gt-macos-arm64"
      sha256 "b6b0d0eae431df78736f97df2022e784f0a5e46027c4d8cd02b2c25e8420e41e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.5/gt-macos-x64"
      sha256 "137e3ec462c2c7177a09e5fb9e6971cf8534780233103416aa0df5cb4fa39124"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.5/gt-linux"
    sha256 "638c46b03044c9ffb658280fcbb5a6f74513f58000247cdef809617db04d96fb"
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
