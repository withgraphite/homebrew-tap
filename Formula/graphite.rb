class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.5/gt-macos-arm64"
      sha256 "73a6df217099860a2b0e0f51e7bcd9a63561824adbbfd2b4c52e88e41e4b9732"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.5/gt-macos-x64"
      sha256 "ec2e0be5fb685120e461efbe498fdcd46b557a95b8d75d7893c4ffe7c5c317df"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.5/gt-linux"
    sha256 "a7e02a75d72e6adb28afe5931f13af2db29e748febc34deb68c3a0ade5ae111c"
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
