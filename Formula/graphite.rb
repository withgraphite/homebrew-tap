class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.15"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.15/gt-macos-arm64"
      sha256 "399be49255b645758a66ad3ab1883456e8a5279c29cf93fb97362a85a12d92e5"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.15/gt-macos-x64"
      sha256 "335c9949d779a718fdb03ce1d83492b2cca3b70a0d5a8fa519d4a8c9fa54cf14"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.15/gt-linux"
    sha256 "cedc03a631f843e2a775edfb120e522154b1941a2c678a5fb75ce5e20b4dbb78"
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
