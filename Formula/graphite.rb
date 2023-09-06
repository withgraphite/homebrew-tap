class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.14"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.14/gt-macos-arm64"
      sha256 "9d1cac585f36d99ee6c4e2f6f6c86b2b6cdd475168ba207b481ce8906cfba085"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.14/gt-macos-x64"
      sha256 "d7e9f9bdaa194dc8780d702b2d9caa0145f4a41d9fe2e44abc10f37109e40672"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.14/gt-linux"
    sha256 "59adcf248abd0dd9ed311ef06f3929bb9839e4cc9072df6576be13dafe5b7ace"
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
