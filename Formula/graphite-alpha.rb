class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.8/gt-macos-arm64"
      sha256 "e2b9e9435a89a0679fb274408cdd084e19927ba58676fc152223d6fdbcc68385"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.8/gt-macos-x64"
      sha256 "201d3dad1f5da968c240d336f7d5c4d79956bd71154977759066bb748c84be32"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.8/gt-linux"
    sha256 "b48a80165c16fb6c4d6b0cfbbee476046f45d3639d08cd119f292048dc55fd8c"
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
