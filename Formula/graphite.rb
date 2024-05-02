class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.4/gt-macos-arm64"
      sha256 "c5503f7b26c67756656ae6c606ce3562ee4e9957969a838d51233c683b930c4d"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.4/gt-macos-x64"
      sha256 "01f13525c1d6e1b8bf56bdcdd0c0aff6bc350458bde14496de166b80e488ee09"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.4/gt-linux"
    sha256 "4e507c8e720d7d09b5382dedb7e88983464c6a5e3958c720f89737305b5e40c7"
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
