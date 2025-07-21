class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.7/gt-macos-arm64"
      sha256 "4e009c05c6c5e9e44d4589e27d983a498e7e6feaad160890d90cdf6fa0aa322c"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.7/gt-macos-x64"
      sha256 "31fb751668010c847d797e4c64b1261da48b6bcb4fe7f8012c521b0d266a0164"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.7/gt-linux"
    sha256 "c04f2acaed33725305c4d44adf9374831d3f7233a44596e1c49533a34cc2cb14"
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
