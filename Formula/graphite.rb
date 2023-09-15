class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.2/gt-macos-arm64"
      sha256 "8957ed672aadd8ff5073ae5cbe9f17c0b850286e36e8f22e6dcdfa3092850044"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.2/gt-macos-x64"
      sha256 "d5fc4b5d9d7a1d8f6b3b722d65bf96470164b8a68d6c8fcb3e10939f09e9c46d"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.2/gt-linux"
    sha256 "1e78c14b245e61ff33d92c79d1e448900d4bcc4f06fc6b338c9d199629aad6b2"
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
