class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.0/gt-macos-arm64"
      sha256 "74d52fbaedb3ee11c689ad83519228c36ace3391f766d37c5ece442e2d9152a1"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.0/gt-macos-x64"
      sha256 "9f0bce548861b146b2fad46925dfd9dc231d45344d47df87e40e385aef57c1f5"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.0/gt-linux"
    sha256 "97a9243dab83ed2735ad3958d3f6abd4a97c6889ba688b62d47100840d664861"
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
