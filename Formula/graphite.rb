class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.10/gt-macos-arm64"
      sha256 "f2e620a4b25b9bb51c6cefac7d16b584f3510a01f2983c35876666d4ddfa7bed"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.10/gt-macos-x64"
      sha256 "280438d3476056ee7f10d29b5a6b9f1db1a982267f5f6ec30254977404a0ab6a"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.10/gt-linux"
    sha256 "2f30b5d196552bd72000b258f9dc06260f21af1db8adfa7b14638fb68cead47b"
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
