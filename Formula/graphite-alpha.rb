class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.1/gt-macos-arm64"
      sha256 "cea7fd356f90b6d150f891e76af5d1c45cda63bb62213967dd6f4af629d9dfe0"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.1/gt-macos-x64"
      sha256 "41d63fee36a7e5c2a8302d5cc4d7bc84549f0fcb46d4f472e68d705352b8a1e4"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.1/gt-linux"
    sha256 "87e2f135611157813ac5f16288ad1cd58878875c0050559ba30c740cec3da41a"
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
