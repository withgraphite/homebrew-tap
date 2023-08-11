class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.2/gt-macos-arm64"
      sha256 "e06b146a6194094f0d1dec8dd77704e002f76dd31824e70e1b35b10b7c25c314"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.2/gt-macos-x64"
      sha256 "9df7483ce9ffb1dbf65f4148e4841dc3bac11e5e7bbc1289a0dab25107b051a8"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.2/gt-linux"
    sha256 "7671aa212bedcd8de2a7c620333e790022d04fd931fc4f602d0d8130ce2b8a85"
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
