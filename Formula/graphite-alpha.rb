class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.2/gt-macos-arm64"
      sha256 "73193bfc25e68e81888a1c8238e86d5499b7aa1b6f72b220e79d40b17ddc2304"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.2/gt-macos-x64"
      sha256 "7e511feb707b8c4064a25acbfd41fb7396f13ac53de62b1b22fedcaad819ea5d"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.2/gt-linux"
    sha256 "f5154ad20465605694a213c69cec3f8effb918b08aec489c31e7836e04760a9e"
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
