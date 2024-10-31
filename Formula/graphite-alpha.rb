class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.8/gt-macos-arm64"
      sha256 "c4620a015dfcf5faaadf62b42e736ecda728386e21b510480fa86e089e4a5908"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.8/gt-macos-x64"
      sha256 "46dd86bbde2f16aab5246b53a2ed8720ec4a6de85b1a3c1b2ff38b1070f3b67e"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.8/gt-linux"
    sha256 "838d12bb5900f457f89028207c906f8a4be816ff5d339b4c35ab172b1e1b1ec9"
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
