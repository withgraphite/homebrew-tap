class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.5/gt-macos-arm64"
      sha256 "93d74b03ac544ded78154ecd1a1553a78c9e01d8b17e515824b96b0eec2dff95"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.5/gt-macos-x64"
      sha256 "ae2d8bd4be265dc3d89e6f203e85e32019412a63e3d6e03f8d108a06626215ae"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.5/gt-linux"
    sha256 "b27f4cece74c7830c6fb58c8e0ecfbbbcd4807b85aa539acc605e14c3ffbf26c"
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
