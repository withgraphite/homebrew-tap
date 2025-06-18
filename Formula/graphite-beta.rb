class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.6/gt-macos-arm64"
      sha256 "c2f1be9bd7631bf68a5b41f81767a49f986cbe1bc73ea61a822c50a985e46bbe"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.6/gt-macos-x64"
      sha256 "9f4d3722d43661d2d4f1d2c0dea779515cb7425e24d7d742dc117af483dd6a1c"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.6/gt-linux"
    sha256 "4a71db1fdd09816324920cab77d4efe498b0b3c167191eacb557c05bcf87a579"
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
