class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.13"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.13/gt-macos-arm64"
      sha256 "6a858d2fd0adf1589a0cf60f42836e78d4e5847a427a017a4681d7fc1491f29d"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.13/gt-macos-x64"
      sha256 "3487fa073e3bd4071bb2c59c886f194a8904c36542593467899745cb34dccab2"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.13/gt-linux"
    sha256 "68347622f006d84a1271d0a1cdbcd81544c20903ad7739e9cee12481b18613cb"
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
