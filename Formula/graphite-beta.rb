class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.10/gt-macos-arm64"
      sha256 "1f431ce55309452d1ef53392c2c59a42f3b62645d9aae0ee7121e7c7d5402c4d"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.10/gt-macos-x64"
      sha256 "0c1581309b8cd60d19f8489b0565ff211f609b650bde47d65be3a7913b4978cd"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.10/gt-linux"
    sha256 "d5cb4235914ff4bf90a7eb9ac56867ee0f1662bd3f35f43b45abe3e3f9c6f9c0"
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
