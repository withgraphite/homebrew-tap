class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.1/gt-macos-arm64"
      sha256 "d881dc93197596547108f2e7f970cd28a728be0fbbcb675f8edd2735ef092401"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.1/gt-macos-x64"
      sha256 "6865c974340a42e2b7a1b80dd875d8c708aeb96ae5caaee3fc6e2653b8774114"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.1/gt-linux"
    sha256 "e3f506570db0ed40d382021e8b30a847155cd8cb3e880fcc2ccd235fba888424"
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
