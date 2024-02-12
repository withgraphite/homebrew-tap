class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.1.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.5/gt-macos-arm64"
      sha256 "cbf489ab9a25bd1b0d56af9bb7bf670560d7fa8e7dda5ca5fa0acf8a2ad672c7"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.5/gt-macos-x64"
      sha256 "216ae75a3d4a9b6bf270446317f6e59f0df7b8e629f1748e728ef6c97999cb47"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.5/gt-linux"
    sha256 "3b058a5930f0453e7dc6b4c5bf3843ae58899bf542e96d46fd2545d4f4c63860"
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
