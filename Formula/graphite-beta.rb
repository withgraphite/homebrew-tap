class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.3/gt-macos-arm64"
      sha256 "cd11ebc729a188a3ae4b3b65151bd3f633fa9385aa3844cda0239ddfc5099a88"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.3/gt-macos-x64"
      sha256 "f54f7f85ce4ab1fcb32118c3bd517a4c982c88886ed1ae2213e82e9702de7150"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.3/gt-linux"
    sha256 "b3281b10d5ccf9ad4279b4b7b3c1e7ca603e2b5c5cb72e18f6b6004d8f6acee0"
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
