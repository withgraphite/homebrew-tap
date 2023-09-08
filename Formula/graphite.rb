class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.15"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.15/gt-macos-arm64"
      sha256 "4a849f2ddd92f049ff84afb1cd0c3eb0078b3cf9ebc2ef51d2eb47ec15623e23"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.15/gt-macos-x64"
      sha256 "6cff0fc173ef6c3b0553ac987f50d3d6d437fa2f8b5568ea3917e25b064207cc"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.15/gt-linux"
    sha256 "0b834d0cb3c4b28fa17ae8874d7d9e443ddbefd1650e08b1cf1219ba5bbb636f"
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
