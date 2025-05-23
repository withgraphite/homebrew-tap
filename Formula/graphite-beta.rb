class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.4/gt-macos-arm64"
      sha256 "1e299426e263259bd5a941575b0b279d6c4e47602b64d1d49e0e2d10f4108724"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.4/gt-macos-x64"
      sha256 "ee883d71550ebf7e8e4476b819b87564a662ff9a3739495d1265b127e38d27a4"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.4/gt-linux"
    sha256 "9cbdf447aeba6e6c628d13774dfcdbc26aecb6203b8cfeee6f65f4180d154772"
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
