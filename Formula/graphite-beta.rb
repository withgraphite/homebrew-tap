class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.4/gt-macos-arm64"
      sha256 "5db86d166f6fb9863e304b9863e2949890dc204a73572c52c78e95e41639a41b"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.4/gt-macos-x64"
      sha256 "d04cc1aef3765251dbc4e1f22418e56e18e82e0afb672a8062be02d30e655422"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.4/gt-linux"
    sha256 "f0de9579529a670eeb6abcc87d2320e2c19461abafed8dec8d5a4df50bbbc404"
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
