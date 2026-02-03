class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.17"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.17/gt-macos-arm64"
      sha256 "99d0477a414b1ab2380f4975ba16d7e1c4ff73b5a7b10e53f5028fd28618f069"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.17/gt-macos-x64"
      sha256 "8ff8d2624eae037280747054741d243c6458e707086c2324427b63bd187a1010"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.17/gt-linux"
    sha256 "597653a33ba72ec71e5d7e5bc6702250e361c5b9730a34125341be233a3b8f83"
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
