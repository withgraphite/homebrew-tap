class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.13"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.13/gt-macos-arm64"
      sha256 "de1a6a600e1412994a3aa0d910ad84a7e2af0a9094b5d435ca671dbfec85a203"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.13/gt-macos-x64"
      sha256 "131b1c62d599787580698c3b2aae63821ba2d811ffbe54a4561c541ea07ea81c"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.13/gt-linux"
    sha256 "54f03cda1d777586b42cea7cfe2173de8ad1fca4327dee68ab0ec3275b9c3d8b"
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
