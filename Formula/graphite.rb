class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.2/gt-macos-arm64"
      sha256 "1097c302faada7180ebf831dfb37f100e927cfe7e81342e4fe167c73c544daa4"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.2/gt-macos-x64"
      sha256 "490e46bbffd759bc562faa25b9ca22d005238970a0f513d622efc0a907a83121"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.2/gt-linux"
    sha256 "44f11b7e2aa59ecf8fa74f154340c6f2fdcab6b01ed888da91ae3546ac013951"
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
