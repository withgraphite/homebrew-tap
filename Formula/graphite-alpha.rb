class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.9/gt-macos-arm64"
      sha256 "bf22e95b42bae211d2a70dd1dc69e6fd5a811620baa125c80c3e171738ed4b1a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.9/gt-macos-x64"
      sha256 "8b5632421d736fa30a295eb330a502e8315784c36dfb0ddc16d634b08faf3548"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.9/gt-linux"
    sha256 "ccc6cbf8a79e5227948b8666044b648025ae4dcec5ee6ac92d8a5c065fa495f2"
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
