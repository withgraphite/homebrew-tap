class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.7/gt-macos-arm64"
      sha256 "f25c6440fc3e6c9c3c9f45818b919c23cb32b83a04a4ba9b50d8a67029b400eb"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.7/gt-macos-x64"
      sha256 "0e07818eb0ff2cf258c7889c1761bf1006c4974641f3a472f2e53419bdc5535c"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.7/gt-linux"
    sha256 "fc00496958eaebb57613756dbd03e9fbdb4f78b9ea7fb0061fae77f86bfa0229"
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
