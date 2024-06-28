class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.10/gt-macos-arm64"
      sha256 "c07ba29768442ae311293bd4c60614147bc0f9cfe10fc30756679f0adee41675"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.10/gt-macos-x64"
      sha256 "18c0f3dcaf4a020d504dda9bc37405d48f071b7601c1dd61de7ce5247c6adcd0"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.10/gt-linux"
    sha256 "92f15904589c1c41e3338866d57f3fe3904ece32b2e1f8d3fa21fbad0c0157af"
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
