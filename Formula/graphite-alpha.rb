class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.7/gt-macos-arm64"
      sha256 "5844526ee1cffb6520986f5b81116022a3e92cce8433d4bde3b9e5a60b9a6112"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.7/gt-macos-x64"
      sha256 "e061e0cf4c8b2dbb660f5527ca42ef4fc28d6335a7f02142f26e05a8c0200692"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.7/gt-linux"
    sha256 "e5efe3c2808a9ea9551218e76958984c16cde101db4983714a326f81fb9f68e1"
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
