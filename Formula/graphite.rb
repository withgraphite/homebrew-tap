class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.6/gt-macos-arm64"
      sha256 "0398a1076828c1de1c6f7b8103571ca24bfdd96f5d237de805cbd7c8f8d78423"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.6/gt-macos-x64"
      sha256 "db0b08eef4e7c9fc006714003c4357eca29bbca54d3e306be1affdd4022d1e02"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.6/gt-linux"
    sha256 "df2d81abf4bfadb1aba36a96e9f68247aa09a74f6ad3b28bbd11f670f810ecb7"
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
