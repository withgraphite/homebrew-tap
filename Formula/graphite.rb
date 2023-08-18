class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.3/gt-macos-arm64"
      sha256 "b511c0151a40c4f1520dfcd1a3c07c93f980d98956bc412d9f5f5470b4ec379c"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.3/gt-macos-x64"
      sha256 "64879700b4e90036babb6c32b17564e50ecf6881069f0b859bccf8b6a8ca6627"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.3/gt-linux"
    sha256 "1b43950e9862b2d17d99bb10632b2c12e014266db6385df1bb18d75c343c1647"
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
