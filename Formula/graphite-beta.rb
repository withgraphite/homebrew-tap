class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.5/gt-macos-arm64"
      sha256 "7234a645bb7751ad40b2b4db9484327c5fd4546aa1ad329304da806a83ac57ac"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.5/gt-macos-x64"
      sha256 "ed0fa33319d4c8ac0ee2833cb981f9aefcb9f489e4246a7782f4709d90dd0e0c"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.5/gt-linux"
    sha256 "7bd024ba3ec3e4e70fbf50835dc2b578e63f557ea7c004f229ea8b492308f38f"
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
