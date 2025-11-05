class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.7/gt-macos-arm64"
      sha256 "46bd1fe82276b805ae6a194831cdeaecacae7345b6f4bf43f6af7e8705ec6cbb"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.7/gt-macos-x64"
      sha256 "5fe81e19a5bea69ad80f549a4a3fba6f7daa15ccbab928677541124abccb73ae"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.7/gt-linux"
    sha256 "3bf66b98757a8886f2271c1fab18df84fd132736947b5ec217b9197ab5d3766c"
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
