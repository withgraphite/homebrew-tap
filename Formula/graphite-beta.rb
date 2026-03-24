class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.3/gt-macos-arm64"
      sha256 "258d7f5a333d808a6e3c9e79090de90ffbebfaee3eb17bd40509766910ee0527"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.3/gt-macos-x64"
      sha256 "170e07c5d66f357833baa621916fd99b07e237ecb3e862996aada38c8a5c2e37"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.3/gt-linux"
    sha256 "69e7f0105164dc1cb53d46b3689c2811474fbe9562affa775fb608865dec55aa"
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
