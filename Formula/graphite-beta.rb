class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.0/gt-macos-arm64"
      sha256 "2a622430158dfbe29e6b4fb6c2919280f00119da9b9c1476ec8ffa854a5bb3d8"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.0/gt-macos-x64"
      sha256 "4c021682d1ced9b6998380ea54a3266ea374157f9df63504c43f742b1faee8fc"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.0/gt-linux"
    sha256 "c26641c5c2f44c0ac4a21785bc278e2d4306bbfc2b1a9f6e8b113b380f237c26"
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
