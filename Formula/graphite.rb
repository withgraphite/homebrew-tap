class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.0/gt-macos-arm64"
      sha256 "4a5a7afac2e5d737fd86ef7cd34ed09d0da8a1242d750d65c36bcc65effb6a4f"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.0/gt-macos-x64"
      sha256 "956632122927ee95954386cd7487abd0afe690833df04daa17d59cc674786d58"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.0/gt-linux"
    sha256 "23fffdc421eb256f6cdd999dcee57c88597a912dc5a2da111dfba4a654d37452"
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
