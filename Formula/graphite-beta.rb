class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.1/gt-macos-arm64"
      sha256 "f6bd5b91ae51d28ef234da7b0ed9e0ee99728256689e21d8c9f1228d4c1b54a7"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.1/gt-macos-x64"
      sha256 "a8e916b1ea32c7bd84f165d374d99c5b64ce00d72d9db3ede7f1d0c47e69e7a6"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.1/gt-linux"
    sha256 "a5b26ed0b40aa405a068f377e7e92d9bfd990598338e55e293b9c9fed48fd806"
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
