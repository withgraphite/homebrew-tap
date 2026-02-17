class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.19"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.19/gt-macos-arm64"
      sha256 "5eedf50e5c6dfd5e8ec8da856ba66ad903c3a0ff255f2a9e5edf05f6bbbbce20"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.19/gt-macos-x64"
      sha256 "f10347cd42bef6cb27164f9b7a1839733739e20319198ff78d649cd2bf975657"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.19/gt-linux"
    sha256 "2b3f26be4c3ec76fdadf3b575f4f6055562fc24487498936b82f78f3e9b23525"
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
