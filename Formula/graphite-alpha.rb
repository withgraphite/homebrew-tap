class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.8/gt-macos-arm64"
      sha256 "231ebe0e044fe619731cdfd1870212843ce4afe759d074ee823baf04da59037a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.8/gt-macos-x64"
      sha256 "91e1d089f6a338fbf09f10a48022c8627c1c14d84849e1401422e6cfe542e1cf"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.8/gt-linux"
    sha256 "5944251a9931395a8b9c99ca4daf93b5e7307db25006c1a6ee1da34721a814f1"
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
