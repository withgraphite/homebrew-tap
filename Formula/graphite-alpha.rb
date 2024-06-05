class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.7/gt-macos-arm64"
      sha256 "cc4b0c52caa379063d626f0a5252defa0de517e6eede272eb7d5a3c27691f7b8"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.7/gt-macos-x64"
      sha256 "a5ca6c7e1769ee64ee056a9ca97cb3c11c23d5cc32402a3fe6a4967674b942ac"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.7/gt-linux"
    sha256 "fd1175fd428ce8f3f0e32dc4417d98a9ff66866ab621482512eb38111405e87c"
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
