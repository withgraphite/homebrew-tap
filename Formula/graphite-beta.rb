class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.12"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.12/gt-macos-arm64"
      sha256 "026348e64e149b9b78034a9e87742470aff315a058a91cf95ee9b2a4ab484237"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.12/gt-macos-x64"
      sha256 "a40962c2dccbf07fa41a08a9a213e197a28157acf2ba36fb5b33551930c868d5"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.12/gt-linux"
    sha256 "35ef8b1ebdbece6ae24ef244b13cdb7f800bb2422ec32e038350532034b66572"
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
