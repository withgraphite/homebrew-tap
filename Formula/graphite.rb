class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.3/gt-macos-arm64"
      sha256 "b5df55a5028587b56ef5c02f79dde5b48d74d833f1e4ebc34c244591ced1ac55"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.3/gt-macos-x64"
      sha256 "b4f5021e55d5eddd1fe9ce81131184d41a7c9a0c3d745afe1a81075891f46969"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.3/gt-linux"
    sha256 "296d03670c7a41af54a383189c6280696c5a9d5eddff730d385f0b1bdf043496"
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
