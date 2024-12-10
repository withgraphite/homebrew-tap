class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.5.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.0/gt-macos-arm64"
      sha256 "8958a5a2f30f0e9fe256a5383d3f8368cbd43a7088dde660e214ae6d09a49986"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.0/gt-macos-x64"
      sha256 "77e7f376b20e4a371d46b94931b22f62a9f93ddc2a1013cc062ceeb6b17cf03e"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.0/gt-linux"
    sha256 "3155de30c35ff74f939ab38b4964c875c5f20d15013df9ea6119e2d3a1894e74"
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
