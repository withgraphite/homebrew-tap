class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.9/gt-macos-arm64"
      sha256 "835601927a832cc7295daf0c09d4fff1f607cc2c9aadbc9db092fe38b8a179e7"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.9/gt-macos-x64"
      sha256 "56fb89c0e22562b1dc8214a39653cde8c26488274c69dc823c6d13b0ef61e3c4"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.9/gt-linux"
    sha256 "3abc21c1c09716f5107ea7828204ca6200d98ab0f73fdf93e11ff70ca177784d"
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
