class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.12"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.12/gt-macos-arm64"
      sha256 "3c1ffdf3a38d0ccd802825fa2e6606a8a29e356c8e70cdd71b973a5b31348f84"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.12/gt-macos-x64"
      sha256 "d619c4abc015d3fb62902a3819ea7ad3cedd09d8689ab3caac8c390c7a1e1e4a"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.12/gt-linux"
    sha256 "76ba03f818ea660abb8a0c77299629811ad3ff0fb6988c9e97093b7219b33eb2"
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
