class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.11"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.11/gt-macos-arm64"
      sha256 "130ac4748a077248250fe9aa9e836c0263950985a3f9d3cb64513377b11773c3"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.11/gt-macos-x64"
      sha256 "8e41668ae2d4e3a31532ef8ad83b1aebba63e0cb1df81d82bd281d07e7222f7c"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.11/gt-linux"
    sha256 "0ded2713eecac29a1588423d27028db213b2c79eb16d6be91653f3b69f082451"
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
