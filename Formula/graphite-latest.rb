class GraphiteLatest < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.6/gt-macos-arm64"
      sha256 "bcc88a0d5fd5a8be47a44942f1db65da46cb445af082f4681c01820d85e0b15e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.6/gt-macos-x64"
      sha256 "048162ed3512554ef85ed41a312658026a40f7057b352bd73accb7a7e9af5ddb"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.6/gt-linux"
    sha256 "55fd50ceb1588f8bf3d4c4d8c63165fec12d941bea8170a4271853d92d592308"
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
