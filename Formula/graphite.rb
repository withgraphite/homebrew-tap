class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.20"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.20/gt-macos-arm64"
      sha256 "868f55430d627378e11b7cb137050bd16d56bcd164bbdcf0e8342719e86cefef"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.20/gt-macos-x64"
      sha256 "4a1b2a548c5a77275453b6a46ff55a19be0c7c763cb0a4230c8b01e0cc9e539d"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.20/gt-linux"
    sha256 "b9b716bca3e1541dceef771fd7fa8db849e71c869d9ab7eacf223885c1a59ef2"
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
