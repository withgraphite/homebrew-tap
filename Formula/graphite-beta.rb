class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.3/gt-macos-arm64"
      sha256 "f1352c0f106dab04b0bb6c37fc663232f9e570d38e0e41578dd949449cb1bf71"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.3/gt-macos-x64"
      sha256 "3d4e7269fee1db47f7ea7dce7ce54c52fe5a3e12f60f81ae52a58aec05e14131"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.3/gt-linux"
    sha256 "fef5e54ff4bde02cb503161f9e096613bc2787add2f638f3a65f2484f2baf176"
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
