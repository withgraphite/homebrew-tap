class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.0/gt-macos-arm64"
      sha256 "9308cd2e3fbd0a686c6ceb8fe2189945ef35c92473e36574a0a6640edbc56b6d"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.0/gt-macos-x64"
      sha256 "9b5a0ba98be14adcc33e9c385d40b922ba1a461ffdc43a009dd4e32a714a1f92"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.0/gt-linux"
    sha256 "d7542b1a03f24d582ff58dd087e40bd185974c11af7834b37fecf3d81b053734"
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
