class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.5.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.1/gt-macos-arm64"
      sha256 "9ee001b66d0f86f2480cd34d1b3f433eadad12e26c88d8674ff773cd8b140904"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.1/gt-macos-x64"
      sha256 "9134d39bf838370df879d3aa375843ae1451f8088a0eb917f143ecfe98e92969"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.1/gt-linux"
    sha256 "1222534d94bb6f92bd48a5bcbc17801c26d15d161c0372b74020a8089efc672f"
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
