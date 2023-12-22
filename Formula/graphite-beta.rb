class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.14"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.14/gt-macos-arm64"
      sha256 "c54fae32ffc01cde4675febfc0a43d03ab0f16252a9cf2db381b679a7b232750"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.14/gt-macos-x64"
      sha256 "2075f0ec38765a6a12bbbce1ccf5ee7f6e9ea9e6eeaa6d6e60a8831e80da65df"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.14/gt-linux"
    sha256 "a95dc3675b76a410daeed88d04cdc8ff1a3db4aea5d36c42b2cccd18c621fbe2"
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
