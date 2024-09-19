class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.5/gt-macos-arm64"
      sha256 "92185c9aa2519b4d56a675ec15157b66961771223e0dc2516d30a6da123e2364"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.5/gt-macos-x64"
      sha256 "ef4472cfe8e91b0f4605a6904cacb40c21bb523b597b4ad24f41889da8797871"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.5/gt-linux"
    sha256 "863d5909c781881cdaf08fc63aff78e90b454606b7908d887c1961219f6b9821"
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
