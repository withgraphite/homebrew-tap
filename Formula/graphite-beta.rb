class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-macos-arm64"
      sha256 "492796ef60087ce9703830bac8d72b89cb44ff25a730e43c106fbedc0bf93d92"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-macos-x64"
      sha256 "b2d4d971bcc32e6eabd033a39a2165ca5cac558a6c57308301710e5eb1fc1834"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-linux"
    sha256 "8c65e5bf24384c6500e32d41f2420958dc570dace9fdc471e525ac8225764d8b"
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
