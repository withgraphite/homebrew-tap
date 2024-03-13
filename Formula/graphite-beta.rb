class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.8/gt-macos-arm64"
      sha256 "3e2e104351ea531285c9221d8be1aeee14fd8f92aaea40e70b91cd2df4a47bb2"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.8/gt-macos-x64"
      sha256 "5cce9b492e1ec46decd2f7da2e133c28f65ef1e510bb12da044803990ea75d79"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.8/gt-linux"
    sha256 "a870734e1d95bcfea35c0d3856a287dd2aacb7aa6ad3482e7db3532a130324c0"
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
