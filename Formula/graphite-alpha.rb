class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.11"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.11/gt-macos-arm64"
      sha256 "355f8b2e9baff2feafe85e98680554288247af6e9da68cfb7610d8b88be2ac37"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.11/gt-macos-x64"
      sha256 "d3b7339832d2666b0a697d3773adef560a0df869ed0648b1143b1c339be5981c"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.11/gt-linux"
    sha256 "c7508d1b1ce58747bfae52e614901b7ac3fb51c5cace727c2c1d6aa685569d4f"
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
