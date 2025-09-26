class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.1/gt-macos-arm64"
      sha256 "998c0d3abaf7232461582b23ce077d4029d660d1aa9d837691a6b790e0228aeb"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.1/gt-macos-x64"
      sha256 "3e1e51b78023b9e9c196d59f53c50b6a21d9e26a54931897c717e80080d8e894"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.1/gt-linux"
    sha256 "d909339b1d2cb6d3aaaa9a784c230e939be9f02b038cd46e0168a9699c7d8645"
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
