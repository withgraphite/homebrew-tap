class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.4/gt-macos-arm64"
      sha256 "6b0ac2f00bccd2c4be8fe5e68e5c8093c657f4bd3c0128de985247def00aa9cd"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.4/gt-macos-x64"
      sha256 "94430a5e2ab6ac7258de68b874daa88dc758f11b57968e62c2d1c352b0ec75a1"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.4/gt-linux"
    sha256 "75792f237ff87d6c91823c391cf186468238f88aa1dc2cdb5c88169092162a2b"
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
