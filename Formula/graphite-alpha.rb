class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.8/gt-macos-arm64"
      sha256 "e008e30f10ed8efe5ba6dff5d596bfc98f7520a9dbf4db1f269c8ca202306a0a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.8/gt-macos-x64"
      sha256 "da9e7865dcac916623179a854e4defc8195774173c08d10bb17836360e9c2bec"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.8/gt-linux"
    sha256 "6b3d2954c1baa41db6ef27e2ae43923c8bb548dc385b377a84e5be59abf665f3"
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
