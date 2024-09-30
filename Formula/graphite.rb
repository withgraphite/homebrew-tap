class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.6/gt-macos-arm64"
      sha256 "1093c757d9a40589a39c1e32e34bcb9782b3bcda6a5f49a3a9543ebcadd5b75b"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.6/gt-macos-x64"
      sha256 "29b31d0dc7973204c67332161a1ebdc91ce9bc9e833256731571d1184dcc6002"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.6/gt-linux"
    sha256 "3682fa19c753af897db8549a3558f17e97ce0c3589de248819097241271ddb9c"
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
