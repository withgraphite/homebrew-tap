class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.10/gt-macos-arm64"
      sha256 "34d1185d7e75c5a3b2b814258a65f2297928ec77b86a99f9042376d744a9a00a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.10/gt-macos-x64"
      sha256 "276df8d229676e22f5e495f86061ce659f63322e7dfa864a500554b8c1f7a0ae"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.10/gt-linux"
    sha256 "825e884054c438da11ea8fa185cd76eb123551f1bf0be30266d7db0708bade66"
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
