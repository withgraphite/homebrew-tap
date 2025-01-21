class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.5.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.2/gt-macos-arm64"
      sha256 "27df4dc11281eb2f2e40b74bc8a13a2acaa1cead23ba5dcfd9dee490710085fb"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.2/gt-macos-x64"
      sha256 "e7351e7848624f95d8bebe109bdaf26a0f0ed31cc8b660f74301718f28f3d4a9"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.5.2/gt-linux"
    sha256 "ec5cd10b0fe04b7451142dd4ea9710297c80d6f1482d25023d7b96d04da27405"
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
