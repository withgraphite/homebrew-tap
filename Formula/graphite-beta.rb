class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-macos-arm64"
      sha256 "1480e90edaeb9eb5ef2378eb82ee60830d2d1fa48ae0779c6ebdaa10b4e47528"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-macos-x64"
      sha256 "62aa021eb791ff58e1d704ed0755c4ed31162d44315823507ddc7d783e044b5f"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-linux"
    sha256 "dbf9cc65ca5d1889ff5cd8f2f580ac796a81c03b220e823bb72c7c159701ceed"
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
